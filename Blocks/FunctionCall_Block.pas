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



unit FunctionCall_Block;

interface

uses
   Vcl.Graphics, Base_Block, CommonInterfaces;

type

   TFunctionCallBlock = class(TBlock)
      public
         constructor Create(ABranch: TBranch); overload;
         constructor Create(ABranch: TBranch; ALeft, ATop, AWidth, AHeight: integer; AId: integer = ID_INVALID); overload;
         function Clone(ABranch: TBranch): TBlock; override;
      protected
         procedure Paint; override;
   end;


implementation

uses
   Vcl.Controls, Vcl.Forms, System.Classes, System.Types, ApplicationCommon, CommonTypes;

constructor TFunctionCallBlock.Create(ABranch: TBranch; ALeft, ATop, AWidth, AHeight: integer; AId: integer = ID_INVALID);
begin
   FType := blFuncCall;
   inherited Create(ABranch, ALeft, ATop, AWidth, AHeight, AId);
   FStatement.SetBounds(10, 0, AWidth-20, 19);
   FStatement.Anchors := [akRight, akLeft, akTop];
   FStatement.BorderStyle := bsSingle;
   FShape := shpRoutine;
   FStatement.Color := GSettings.GetShapeColor(FShape);
   BottomPoint.X := AWidth div 2;
   BottomPoint.Y := 19;
   IPoint.X := BottomPoint.X + 30;
   IPoint.Y := 30;
   BottomHook := BottomPoint.X;
   TopHook.X := BottomPoint.X;
   Constraints.MinWidth := 140;
   Constraints.MinHeight := 51;
end;

function TFunctionCallBlock.Clone(ABranch: TBranch): TBlock;
begin
   result := TFunctionCallBlock.Create(ABranch, Left, Top, Width, Height);
   result.CloneFrom(Self);
end;

constructor TFunctionCallBlock.Create(ABranch: TBranch);
begin
   Create(ABranch, 0, 0, 140, 51);
end;

procedure TFunctionCallBlock.Paint;
var
   y: integer;
   lColor: TColor;
begin
   inherited;
   with Canvas do
   begin
      if FStatement <> nil then
      begin
         y := FStatement.Height - 1;
         DrawArrow(BottomPoint.X, y, BottomPoint.X, Height-1);
         Polygon([Point(8, 0), Point(10, 0),
                  Point(10, y),
                  Point(8, y),
                  Point(8, 0)]);
         Polygon([Point(Width-11, 0),
                  Point(Width-9, 0),
                  Point(Width-9, y),
                  Point(Width-11, y),
                  Point(Width-11, 0)]);
         Brush.Style := bsClear;
         lColor := GSettings.GetShapeColor(FShape);
         if lColor <> GSettings.DesktopColor then
            Brush.Color := lColor;
         Polygon([TPoint.Zero,
                  Point(7, 0),
                  Point(7, y),
                  Point(0, y),
                  TPoint.Zero]);
         Polygon([Point(Width-8, 0),
                  Point(Width-1, 0),
                  Point(Width-1, y),
                  Point(Width-8, y),
                  Point(Width-8, 0)]);
      end;
      DrawBlockLabel(5, 20, GInfra.CurrentLang.LabelFuncCall);
   end;
   DrawI;
end;

end.
