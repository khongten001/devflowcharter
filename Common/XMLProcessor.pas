{
   Copyright (C) 2006 The devFlowcharter project.
   The initial author of this file is Michal Domagala.

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
}



{ This unit contains routines to read/write XML files }

unit XMLProcessor;

interface

uses
   Vcl.Controls, Vcl.Dialogs, OmniXML, Base_Block, CommonTypes;

type

   TXMLExportProc = procedure(ATag: IXMLElement) of object;
   TXMLImportProc = function(ATag: IXMLElement; AImportMode: TImportMode): TError of object;

   TXMLProcessor = class(TObject)
   private
      class function DialogXMLFile(ADialog: TOpenDialog; const AFileName: string = ''): string;
   public
      class function ExportToXMLFile(AExportProc: TXMLExportProc; const AFilePath: string = ''): TError;
      class function ImportFromXMLFile(AImportProc: TXMLImportProc;
                                       AImportMode: TImportMode;
                                       const AFileName: string = '';
                                       APreserveSpace: boolean = false): string;
      class function FindChildTag(ATag: IXMLElement; const AName: string): IXMLElement;
      class function FindNextTag(ATag: IXMLElement): IXMLElement;
      class procedure AddText(ATag: IXMLElement; const AText: string);
      class procedure AddCDATA(ATag: IXMLElement; const AText: string);
      class procedure ExportBlockToXML(ABlock: TBlock; ATag: IXMLElement);
      class function CountChildTags(ATag: IXMLElement; const AChildTagName: string; AWithText: boolean = false): integer;
      class function GetBool(ATag: IXMLElement; const AttrName: string; ADefault: boolean = false): boolean; overload;
      class function GetBool(const AValue: string; ADefault: boolean = false): boolean; overload;
      class function GetBoolFromChild(ATag: IXMLElement; const AChildTagName: string; ADefault: boolean = false): boolean;
      class function GetInt(ATag: IXMLElement; const AttrName: string; ADefault: integer = 0): integer;
      class function ImportFlowchartFromXMLTag(ATag: IXMLElement;
                                               AParent: TWinControl;
                                               APrevBlock: TBlock;
                                               var AError: TError;
                                               ABranchInd: integer = PRIMARY_BRANCH_IDX): TBlock;
   end;

const
   XML_HEADER = 'version="1.0" encoding="UTF-8"';

implementation

uses
   System.SysUtils, ApplicationCommon, BlockFactory, BlockTabSheet;

class function TXMLProcessor.FindChildTag(ATag: IXMLElement; const AName: string): IXMLElement;
var
   node: IXMLNode;
begin
    result := nil;
    if (ATag <> nil) and ATag.HasChildNodes then
    begin
        node := ATag.FirstChild;
        while node <> nil do
        begin
            if node.NodeName = AName then
            begin
               result := node as IXMLElement;
               break;
            end;
            node := node.NextSibling;
        end;
    end;
end;

class function TXMLProcessor.FindNextTag(ATag: IXMLElement): IXMLElement;
var
   node: IXMLNode;
begin
    result := nil;
    node := nil;
    if ATag <> nil then
       node := ATag.NextSibling;
    while node <> nil do
    begin
        if node.NodeName = ATag.NodeName then
        begin
           result := node as IXMLElement;
           break;
        end;
        node := node.NextSibling;
    end;
end;

class function TXMLProcessor.GetBool(ATag: IXMLElement; const AttrName: string; ADefault: boolean = false): boolean;
begin
   result := ADefault;
   if ATag <> nil then
      result := GetBool(ATag.GetAttribute(AttrName).Trim, ADefault);
end;

class function TXMLProcessor.GetBoolFromChild(ATag: IXMLElement; const AChildTagName: string; ADefault: boolean = false): boolean;
var
   tag: IXMLElement;
begin
   tag := FindChildTag(ATag, AChildTagName);
   if tag <> nil then
      result := GetBool(tag.Text.Trim, ADefault)
   else
      result := ADefault;
end;

class function TXMLProcessor.GetBool(const AValue: string; ADefault: boolean = false): boolean;
var
   i: integer;
begin
   if TryStrToInt(AValue, i) then
      result := i <> 0
   else if SameText('true', AValue) then
      result := true
   else if SameText('false', AValue) then
      result := false
   else
      result := ADefault;
end;

class function TXMLProcessor.GetInt(ATag: IXMLElement; const AttrName: string; ADefault: integer = 0): integer;
begin
   result := ADefault;
   if ATag <> nil then
      result := StrToIntDef(ATag.GetAttribute(AttrName).Trim, ADefault);
end;

class procedure TXMLProcessor.AddText(ATag: IXMLElement; const AText: string);
begin
   if (ATag <> nil) and not AText.IsEmpty then
      ATag.AppendChild(ATag.OwnerDocument.CreateTextNode(AText));
end;

class procedure TXMLProcessor.AddCDATA(ATag: IXMLElement; const AText: string);
begin
   if (ATag <> nil) and not AText.IsEmpty then
      ATag.AppendChild(ATag.OwnerDocument.CreateCDATASection(AText));
end;

class function TXMLProcessor.CountChildTags(ATag: IXMLElement; const AChildTagName: string; AWithText: boolean = false): integer;
var
   tag: IXMLElement;
begin
   result := 0;
   tag := FindChildTag(ATag, AChildTagName);
   while tag <> nil do
   begin
      if not (AWithText and tag.Text.Trim.IsEmpty) then
         result := result + 1;
      tag := FindNextTag(tag);
   end;
end;

class procedure TXMLProcessor.ExportBlockToXML(ABlock: TBlock; ATag: IXMLElement);
var
   tag: IXMLElement;
begin
   if (ATag <> nil) and (ABlock <> nil) then
   begin
      tag := ATag.OwnerDocument.CreateElement(BLOCK_TAG);
      ATag.AppendChild(tag);
      ABlock.SaveInXML(tag);
   end;
end;

class function TXMLProcessor.ImportFlowchartFromXMLTag(ATag: IXMLElement;      // root XML tag
                                                       AParent: TWinControl;       // Parent window for new block
                                                       APrevBlock: TBlock;
                                                       var AError: TError;
                                                       ABranchInd: integer = PRIMARY_BRANCH_IDX): TBlock;
var
   tag: IXMLElement;
   branch: TBranch;
   initCount: integer;
   tab: TBlockTabSheet;
   control: TControl;
   newBlock: TBlock;
begin
    result := nil;
    tab := nil;
    branch := nil;
    AError := errNone;
    Gerr_text := '';
    initCount := AParent.ControlCount;
    tag := ATag;

    if AParent is TGroupBlock then
    begin
       if APrevBlock <> nil then                                  // predBlock is not nil so newBlock will be put into list
          branch := APrevBlock.ParentBranch                       // containing predBlock, just after predBlock
       else                                                      // predBlock is nil so newBlock will be put at the beginning of the list
          branch := TGroupBlock(AParent).GetBranch(ABranchInd);   // branch is determined by branch_id
    end
    else if AParent is TBlockTabSheet then
       tab := TBlockTabSheet(AParent);

    while (tag <> nil) and (AError = errNone) do
    begin
       newBlock := nil;
       if tab <> nil then
       begin
          newBlock := TBlockFactory.Create(tag, tab);
          tab := nil;
       end
       else if branch <> nil then
       begin
          newBlock := TBlockFactory.Create(tag, branch);
          if newBlock <> nil then
          begin
             branch.InsertAfter(newBlock, APrevBlock);
             APrevBlock := newBlock;
          end;
       end;
       if newBlock = nil then
          AError := errValidate
       else
          result := newBlock;
       tag := FindNextTag(tag);
    end;

    if AError <> errNone then
    begin
       while initCount < AParent.ControlCount do   // destroy all previously created blocks
       begin
          branch := nil;
          control := AParent.Controls[initCount];
          if control is TBlock then
             branch := TBlock(control).ParentBranch;
          if branch <> nil then
             branch.Remove(TBlock(control));
          control.Destroy;
       end;
       result := nil;
    end;

end;

class function TXMLProcessor.DialogXMLFile(ADialog: TOpenDialog; const AFileName: string = ''): string;
begin
   result := '';
   ADialog.Filter := i18Manager.GetString('XMLFilesFilter');
   ADialog.FileName := AFileName;
   if ADialog.Execute then
      result := ADialog.FileName;
end;

class function TXMLProcessor.ImportFromXMLFile(AImportProc: TXMLImportProc;
                                               AImportMode: TImportMode;
                                               const AFileName: string = '';
                                               APreserveSpace: boolean = false): string;
var
   docXML: IXMLDocument;
   errText: string;
   status: TError;
begin
   result := '';
   if Assigned(AImportProc) then
   begin
      errText := '';
      result := AFileName;
      if result.IsEmpty then
         result := TXMLProcessor.DialogXMLFile(TInfra.GetMainForm.OpenDialog);
      if result.IsEmpty then
         Exit;
      docXML := CreateXMLDoc;
      docXML.PreserveWhiteSpace := APreserveSpace;
      try
         if docXML.Load(result) then
            status := AImportProc(docXML.DocumentElement, AImportMode)
         else
         begin
            status := errSyntax;
            with docXML.ParseError do
               errText := i18Manager.GetFormattedString('ParserError', [ErrorCode, Line, LinePos, Reason]);
         end;
      except on E: Exception do
         begin
            status := errIO;
            errText := E.Message;
         end;
      end;
      if status <> errNone then
      begin
         if errText.IsEmpty then
            errText := GErr_text;
         errText := i18Manager.GetFormattedString('FileError', [result]) + sLineBreak + errText;
         TInfra.ShowFormattedErrorBox('ImportFailed', [sLineBreak, errText], errImport);
         result := '';
      end;
   end;
end;

class function TXMLProcessor.ExportToXMLFile(AExportProc: TXMLExportProc; const AFilePath: string = ''): TError;
var
   docXML: IXMLDocument;
   xmlInstr: IXMLProcessingInstruction;
   tag: IXMLElement;
   filePath: string;
begin
   result := errNone;
   if Assigned(AExportProc) then
   begin
      if ExtractFilePath(AFilePath).IsEmpty then
         filePath := TXMLProcessor.DialogXMLFile(TInfra.GetMainForm.ExportDialog, AFilePath)
      else
         filePath := AFilePath;
      if FileExists(filePath) and FileIsReadOnly(filePath) then
      begin
         TInfra.ShowFormattedErrorBox('SaveReadOnlyFile', [filePath], errIO);
         result := errIO;
      end
      else if not filePath.IsEmpty then
      begin
         docXML := CreateXMLDoc;
         xmlInstr := docXML.CreateProcessingInstruction('xml', XML_HEADER);
         docXML.AppendChild(xmlInstr);
         tag := docXML.CreateElement('project');
         docXML.AppendChild(tag);
         AExportProc(tag);
         try
            docXML.Save(filePath, ofIndent);
         except on E: Exception do
            begin
               result := errIO;
               TInfra.ShowFormattedErrorBox('SaveError', [filePath, sLineBreak, E.Message], result);
            end;
         end;
      end;
   end;
end;

end.





