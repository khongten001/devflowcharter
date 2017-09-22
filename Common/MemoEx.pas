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



unit MemoEx;

interface

uses
   Vcl.StdCtrls;

type

   TMemoEx = class(TMemo)
      private
         FHasVScroll,
         FHasHScroll,
         FHasWordWrap: boolean;
         procedure ResetScrollBars(const AStyle: TScrollStyle);
         procedure UpdateVScroll;
         procedure UpdateHScroll;
         procedure SetHasVScroll(AValue: boolean);
         procedure SetHasHScroll(AValue: boolean);
         procedure SetHasWordWrap(AValue: boolean);
      public
         property HasVScroll: boolean read FHasVScroll write SetHasVScroll;
         property HasHScroll: boolean read FHasHScroll write SetHasHScroll;
         property HasWordWrap: boolean read FHasWordWrap write SetHasWordWrap;
         procedure UpdateScrolls;
   end;

implementation

uses
   System.Classes, System.StrUtils, WinApi.Windows, Vcl.Graphics, WinApi.Messages;

procedure TMemoEx.SetHasVScroll(AValue: boolean);
begin
   if AValue <> FHasVScroll then
   begin
      FHasVScroll := AValue;
      UpdateVScroll;
   end;
end;

procedure TMemoEx.SetHasHScroll(AValue: boolean);
begin
   if AValue <> FHasHScroll then
   begin
      FHasHScroll := AValue;
      if FHasHScroll then
         SetHasWordWrap(false);
      UpdateHScroll;
   end;
end;

procedure TMemoEx.SetHasWordWrap(AValue: boolean);
begin
   if AValue <> FHasWordWrap then
   begin
      WordWrap := AValue;
      FHasWordWrap := AValue;
      if FHasWordWrap then
         SetHasHScroll(false);
   end;
end;

procedure TMemoEx.ResetScrollBars(const AStyle: TScrollStyle);
var
   sStyle: TScrollStyle;
begin
   if AStyle = TScrollStyle.ssVertical then
      sStyle := TScrollStyle.ssHorizontal
   else
      sStyle := TScrollStyle.ssVertical;
   if ScrollBars = TScrollStyle.ssBoth then
      ScrollBars := AStyle
   else if ScrollBars = sStyle then
      ScrollBars := TScrollStyle.ssNone;
end;

procedure TMemoEx.UpdateVScroll;
var
   pos, count, lineCount: integer;
   oldFont: HFont;
   hnd: THandle;
   txtMetric: TTextMetric;
begin
      pos := SelStart;
      if FHasVScroll then
      begin
         hnd := GetDC(Handle);
         try
            oldFont := SelectObject(hnd, Font.Handle);
            try
               GetTextMetrics(hnd, txtMetric);
               lineCount := (ClientHeight - 4)  div (txtMetric.tmHeight + txtMetric.tmExternalLeading)
            finally
               SelectObject(hnd, oldFont);
            end;
         finally
            ReleaseDC(Handle, hnd);
         end;
         count := Lines.Count;
         if EndsText(sLineBreak, Text) then
            count := count + 1;
         if count > lineCount then
         begin
            if ScrollBars = TScrollStyle.ssNone then
               ScrollBars := TScrollStyle.ssVertical
            else if ScrollBars = TScrollStyle.ssHorizontal then
               ScrollBars := TScrollStyle.ssBoth;
         end
         else
            ResetScrollBars(TScrollStyle.ssHorizontal);
      end
      else
         ResetScrollBars(TScrollStyle.ssHorizontal);
      SelStart := pos;
end;

procedure TMemoEx.UpdateHScroll;
var
   pos, cnt, w, i: integer;
   lCanvas: TCanvas;
   margns: longint;
begin
      pos := SelStart;
      if FHasHScroll and not FHasWordWrap then
      begin
         w := 0;
         lCanvas := TCanvas.Create;
         try
            lCanvas.Font.Assign(Font);
            lCanvas.Handle := GetDC(Handle);
            for i := 0 to Lines.Count-1 do
            begin
               cnt := lCanvas.TextWidth(Lines[i]);
               if cnt > w then
                  w := cnt;
            end;
            margns := SendMessage(Handle, EM_GETMARGINS, 0, 0);
            if w > (ClientWidth - HiWord(margns) - LoWord(margns) - 3) then
            begin
               if ScrollBars = TScrollStyle.ssNone then
                  ScrollBars := TScrollStyle.ssHorizontal
               else if ScrollBars = TScrollStyle.ssVertical then
                  ScrollBars := TScrollStyle.ssBoth;
            end
            else
               ResetScrollBars(TScrollStyle.ssVertical);
         finally
            ReleaseDC(Handle, lCanvas.Handle);
            lCanvas.Free;
         end;
      end
      else
         ResetScrollBars(TScrollStyle.ssVertical);
      SelStart := pos;
end;

procedure TMemoEx.UpdateScrolls;
begin
   UpdateVScroll;
   UpdateHScroll;
end;


end.