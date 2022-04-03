unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm7.Button1Click(Sender: TObject);
var
    Check:string;
    Number:Integer;
begin
    Check:=Edit1.Text;
    if ComboBox1.Text='�����' then
    begin
        AdrCurr:=Adr1;
        Number:=0;
        while (AdrCurr^.Adrcled <> nil) and (Number=0) do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            if (AdrCurr.Data.Adres = Check) or (IntToStr(AdrCurr.Data.TimeMin) = Check) or (IntToStr(AdrCurr.Data.TimeMax) = Check) or (IntToStr(AdrCurr.Data.Ves) = Check) or (IntToStr(AdrCurr.Data.Obiem) = Check) then
                Number:=AdrCurr.Data.Number;
        end;
        if Number = 0 then
            ShowMessage('����� �� ��� ������')
        else
        begin
            ShowMessage('����� ������. ����� ������: '+IntToStr(Number));
            ComboBox1.Text:='';
            Edit1.Text:='';
            Form7.Close;
        end;
    end;
    if ComboBox1.Text='�������' then
    begin
        AddrCurr:=Addr1;
        Number:=0;
        while (AddrCurr^.Addrcled <> nil) and (Number=0)  do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            if (AddrCurr.Data.Name = Check) or (AddrCurr.Data.Surname = Check) or (AddrCurr.Data.SecondName = Check) or (IntToStr(AddrCurr.Data.WorkTimeMin) = Check) or (IntToStr(AddrCurr.Data.WorkTimeMax) = Check) or (IntToStr(AddrCurr.Data.Gruzopodiem) = Check) or (IntToStr(AddrCurr.Data.MaxObiem) = Check) then
                Number:=AddrCurr.Data.Number;
        end;
        if Number = 0 then
            ShowMessage('������ �� ��� ������')
        else
        begin
            ShowMessage('������ ������. ����� �������: '+IntToStr(Number));
            ComboBox1.Text:='';
            Edit1.Text:='';
            Form7.Close;
        end;
    end;

end;

end.
