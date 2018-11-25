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



unit CommonInterfaces;

interface

uses
   Vcl.Controls, Vcl.ComCtrls, OmniXML, Vcl.Graphics, System.Types,
   CommonTypes, MemoEx;

const
   ID_INVALID      = -1;

   PAGE_INDEX_COMPARE = 0;
   Z_ORDER_COMPARE    = 1;
   NAME_COMPARE       = 2;

type

   IIdentifiable = interface
      ['{A7ED5085-D43B-49B3-879E-272A64A766B7}']
      function GetId: integer;
      property Id: integer read GetId;
   end;

   IGenericComparable = interface
      ['{67CF9A42-5F40-4514-A352-E7FE29F8CF43}']
      function GetCompareValue(ACompareType: integer): integer;
   end;

   IActivable = interface
      ['{FC98CF4A-67AE-4111-AE9A-38C3F5FE861E}']
      function GetActive: boolean;
      procedure SetActive(AValue: boolean);
      property Active: boolean read GetActive write SetActive;
   end;

   IXMLable = interface(IActivable)
      ['{371696A8-8B69-4293-8A9B-B00ACEE315C6}']
      procedure ExportToXMLTag(ATag: IXMLElement);
      procedure ImportFromXMLTag(ATag: IXMLElement; APinControl: TControl = nil);
   end;

   ITabbable = interface(IActivable)
      ['{1E316044-89E6-4FFB-AC4D-FA773D4774D8}']
      function GetName: string;
      function GetTab: TTabSheet;
      function GetLibName: string;
   end;

   ISizeEditable = interface
      ['{B711195E-B798-49D4-8C8E-159F81C42EA2}']
      procedure RefreshSizeEdits;
   end;

   IWinControl = interface
      ['{83E56064-8CD4-4E91-BB66-47EDBCF2C697}']
      function GetHandle: THandle;
      procedure BringAllToFront;
      procedure SetZOrder(AValue: integer);
      function GetZOrder: integer;
   end;

   IFocusable = interface
      ['{35418E64-5114-4412-9913-B58489A8E499}']
      function RetrieveFocus(AInfo: TFocusInfo): boolean;
      function CanBeFocused: boolean;
      function GetFocusColor: TColor;
      function Remove(ANode: TTreeNode = nil): boolean;
      function CanRemove: boolean;
      function IsBoldDesc: boolean;
   end;

   IExportable = interface
      ['{3AB6F6EE-5088-4791-8C11-620A1F768269}']
      function ExportToXMLFile(const AFile: string): TErrorType;
      procedure ExportToGraphic(AGraphic: TGraphic);
      function GetExportFileName: string;
   end;

   IMemoEx = interface
      ['{F410876A-85D4-40FA-B6B5-669EA3941031}']
      function GetMemoEx: TMemoEx;
   end;

implementation

end.
