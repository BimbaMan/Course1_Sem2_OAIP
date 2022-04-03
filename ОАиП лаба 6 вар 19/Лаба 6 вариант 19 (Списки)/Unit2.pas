unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit6: TEdit;
    Label11: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
begin
    if (Edit1.Text='') or (Edit2.Text='') or (Edit3.Text='') or (Edit4.Text='') or (Edit5.Text='') or (Edit6.Text='') then
        ShowMessage('��������� ������������ �������� ������')
    else
    begin

            New(AdrCurr^.Adrcled);
            AdrCurr:= AdrCurr^.Adrcled;
            AdrCurr^.Data.Number:= StrToInt(Edit1.Text);
            AdrCurr^.Data.Adres:= Edit2.Text;
            AdrCurr^.Data.TimeMin:= StrToInt(Edit3.Text);
            AdrCurr^.Data.TimeMax:= StrToInt(Edit4.Text);
            AdrCurr^.Data.Ves:= StrToInt(Edit5.Text);
            AdrCurr^.Data.Obiem:= StrToInt(Edit6.Text);
            AdrCurr^.Adrcled:= nil;
            Edit1.Text:='';
            Edit2.Text:='';
            Edit3.Text:='';
            Edit4.Text:='';
            Edit5.Text:='';
            Edit6.Text:='';

        Form1.ListOfZakazi.Lines.Add('����� ������: '+IntToStr(AdrCurr.Data.Number)
        +#13#10+'����� ��������: '+AdrCurr.Data.Adres
        +#13#10+'����� ��������: � '+IntToStr(AdrCurr.Data.TimeMin)+' �� '+IntToStr(AdrCurr.Data.TimeMax)+' �����'
        +#13#10+'���: '+IntToStr(AdrCurr.Data.Ves)+' ��'
        +#13#10+'�����: '+IntToStr(AdrCurr.Data.Obiem)+' �^3'+#13#10);
        ShowMessage('����� ������� ��������.');
        Form2.Close;
    end;
end;

end.
