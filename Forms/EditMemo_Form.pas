unit EditMemo_Form;

interface

uses
  System.Classes, Vcl.StdCtrls, Vcl.Controls, Base_Form, Base_Block, CommonInterfaces;

type

  TMemoEditorForm = class(TBaseForm)
    memEditor: TMemo;
    btnOK: TButton;
    btnCancel: TButton;
    procedure ResetForm; override;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Source: TMemo;
  end;

var
  MemoEditorForm: TMemoEditorForm;

implementation

uses
   WinApi.Windows, Vcl.Graphics, Vcl.Forms, ApplicationCommon;

{$R *.dfm}

procedure TMemoEditorForm.ResetForm;
begin
   Source := nil;
end;

procedure TMemoEditorForm.btnOKClick(Sender: TObject);
begin
   if (Sender = btnOK) and (Source <> nil) then
   begin
      Source.Text := memEditor.Text;
      Source.Width := Width;
      Source.Height := Height;
   end;
   Source := nil;
   Close;
end;

procedure TMemoEditorForm.FormShow(Sender: TObject);
var
   pnt: TPoint;
begin
   if Source <> nil then
   begin
      pnt := Source.ClientOrigin;
      SetBounds(pnt.X, pnt.Y, Source.Width, Source.Height);
      memEditor.Font.Assign(Source.Font);
      memEditor.Font.Color := clNavy;
      memEditor.Text := Source.Text;
   end;
end;

procedure TMemoEditorForm.FormCreate(Sender: TObject);
begin
   memEditor.DoubleBuffered := true;
   if (i18Manager.LoadStaticLabels(GSettings.TranslateFile) = 0) and (i18Manager.LoadDefaultLabels = 0) then
      Application.Terminate;
end;

end.
