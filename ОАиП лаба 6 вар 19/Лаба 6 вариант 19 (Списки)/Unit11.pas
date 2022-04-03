unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm11.FormActivate(Sender: TObject);
begin
    Memo1.Lines.Clear;
    AddrCurrCopy:=Addr1Copy;
    while AddrCurrCopy^.AddrcledCopy <> nil do
    begin
        AddrCurrCopy:=AddrCurrCopy^.AddrcledCopy;
        if AddrCurrCopy.NumOfZakazi <> 0 then
            Memo1.Lines.Add('������ �����: '+IntToStr(AddrCurrCopy.Data.Number)+#13#10+'����� �����:'+IntToStr(AddrCurrCopy.NumOfZakazi)+#13#10)
        else
            Memo1.Lines.Add('������ �����: '+IntToStr(AddrCurrCopy.Data.Number)+#13#10+'����� �� ������'+#13#10)
    end;
end;

end.
