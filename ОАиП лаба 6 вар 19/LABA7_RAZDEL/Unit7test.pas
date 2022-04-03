unit Unit7test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSave = class(TForm)
    lblSaveTitle: TLabel;
    rbSaveMale: TRadioButton;
    rbSaveFemale: TRadioButton;
    edtSave: TEdit;
    btnSaveType: TButton;
    btnSaveText: TButton;
    lblSaveName: TLabel;
    procedure btnSaveTypeClick(Sender: TObject);
    procedure btnSaveTextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSave: TfrmSave;

implementation
uses Unit1test, unit6test;

{$R *.dfm}




procedure TfrmSave.btnSaveTextClick(Sender: TObject);
begin
  if (rbSaveMale.Checked=false) and (rbSaveFemale.Checked=false) then
    ShowMessage('������! �������� ��� ������������.');

  if rbSaveMale.checked=true then
    file_create_text(PMaleHead, edtSave.Text);

  if rbSaveFemale.checked=true then
    file_create_text(PFemHead, edtSave.Text);

  edtSave.Text:='';
end;

procedure TfrmSave.btnSaveTypeClick(Sender: TObject);
begin
 if (rbSaveMale.checked=false) and (rbSaveFemale.checked=false) then
   ShowMessage('������! �������� ��� ������������.');

 if rbSaveMale.checked=true then
   file_create_typized(PMaleHead, edtSave.Text);

 if rbSaveFemale.checked=true then
   file_create_typized(PFemHead, edtSave.Text);

  edtSave.Text:='';
end;

end.
