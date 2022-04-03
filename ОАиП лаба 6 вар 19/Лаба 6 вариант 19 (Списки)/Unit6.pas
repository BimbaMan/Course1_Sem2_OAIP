unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
var
    i,j,temp:integer;
    MasZakazi,MasKyrieri: Array of integer;
begin
    Form1.ListOfZakazi.Clear;
    Form1.ListOfKyrieri.Clear;
    i:=0;
    j:=0;
    AdrCurr:=Adr1;
    while AdrCurr^.Adrcled <> nil do
    begin
        i:=i+1;
        AdrCurr:=AdrCurr^.Adrcled;
    end;
    SetLength(MasZakazi,i);
    AddrCurr:=Addr1;
    while AddrCurr^.Addrcled <> nil do
    begin
        j:=j+1;
        AddrCurr:=AddrCurr^.Addrcled;
    end;
    SetLength(MasKyrieri,j);
    if ComboBox1.Text = '�� �����' then
    begin
        i:=0;
        AdrCurr:=Adr1;
        while AdrCurr^.Adrcled <> nil do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            MasZakazi[i]:=AdrCurr.Data.Ves;
            inc(i);
        end;
        for i := 0 to Length(MasZakazi)-2 do
        begin
            for j := i+1 to Length(MasZakazi)-1 do
            begin
                if MasZakazi[i]>MasZakazi[j] then
                begin
                    temp:=MasZakazi[i];
                    MasZakazi[i]:=MasZakazi[j];
                    MasZakazi[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasZakazi);
        i:=0;
        while j <> 0 do
        begin
            AdrCurr:=Adr1;
            while AdrCurr^.Data.Ves <> MasZakazi[i] do
                AdrCurr:=AdrCurr^.Adrcled;
            Form1.ListOfZakazi.Lines.Add('����� ������: '+IntToStr(AdrCurr.Data.Number)+#13#10+'����� ��������: '+AdrCurr.Data.Adres+#13#10+'����� ��������: � '+IntToStr(AdrCurr.Data.TimeMin)+' �� '+IntToStr(AdrCurr.Data.TimeMax)+' �����'+#13#10+'���: '+IntToStr(AdrCurr.Data.Ves)+' ��'+#13#10+'�����: '+IntToStr(AdrCurr.Data.Obiem)+' �^3'+#13#10);
            dec(j);
            inc(i);
        end;



        i:=0;
        AddrCurr:=Addr1;
        while AddrCurr^.Addrcled <> nil do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            MasKyrieri[i]:=AddrCurr.Data.Gruzopodiem;
            inc(i);
        end;
        for i := 0 to Length(MasKyrieri)-2 do
        begin
            for j := i+1 to Length(MasKyrieri)-1 do
            begin
                if MasKyrieri[i]>MasKyrieri[j] then
                begin
                    temp:=MasKyrieri[i];
                    MasKyrieri[i]:=MasKyrieri[j];
                    MasKyrieri[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasKyrieri);
        i:=0;
        while j <> 0 do
        begin
            AddrCurr:=Addr1;
            while AddrCurr^.Data.Gruzopodiem <> MasKyrieri[i] do
                AddrCurr:=AddrCurr^.Addrcled;
            Form1.ListOfKyrieri.Lines.Add('����� �������: '+IntToStr(AddrCurr.Data.Number)+#13#10+'���: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'����� ������: � '+IntToStr(AddrCurr.Data.WorkTimeMin)+' �� '+IntToStr(AddrCurr.Data.WorkTimeMax)+' �����'+#13#10+'���������������� ����������: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' ��'+#13#10+'������������ ����� �����: '+IntToStr(AddrCurr.Data.MaxObiem)+' �^3'+#13#10);
            dec(j);
            inc(i);
        end;
        ShowMessage('������ ������������� �������');
        ComboBox1.Text:='';
        Form6.Close;
    end;

    if ComboBox1.Text = '�� ������' then
    begin
        i:=0;
        AdrCurr:=Adr1;
        while AdrCurr^.Adrcled <> nil do
        begin
            AdrCurr:=AdrCurr^.Adrcled;
            MasZakazi[i]:=AdrCurr.Data.Obiem;
            inc(i);
        end;
        for i := 0 to Length(MasZakazi)-2 do
        begin
            for j := i+1 to Length(MasZakazi)-1 do
            begin
                if MasZakazi[i]>MasZakazi[j] then
                begin
                    temp:=MasZakazi[i];
                    MasZakazi[i]:=MasZakazi[j];
                    MasZakazi[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasZakazi);
        i:=0;
        while j <> 0 do
        begin
            AdrCurr:=Adr1;
            while AdrCurr^.Data.Obiem <> MasZakazi[i] do
                AdrCurr:=AdrCurr^.Adrcled;
            Form1.ListOfZakazi.Lines.Add('����� ������: '+IntToStr(AdrCurr.Data.Number)+#13#10+'����� ��������: '+AdrCurr.Data.Adres+#13#10+'����� ��������: � '+IntToStr(AdrCurr.Data.TimeMin)+' �� '+IntToStr(AdrCurr.Data.TimeMax)+' �����'+#13#10+'���: '+IntToStr(AdrCurr.Data.Ves)+' ��'+#13#10+'�����: '+IntToStr(AdrCurr.Data.Obiem)+' �^3'+#13#10);
            dec(j);
            inc(i);
        end;



        i:=0;
        AddrCurr:=Addr1;
        while AddrCurr^.Addrcled <> nil do
        begin
            AddrCurr:=AddrCurr^.Addrcled;
            MasKyrieri[i]:=AddrCurr.Data.MaxObiem;
            inc(i);
        end;
        for i := 0 to Length(MasKyrieri)-2 do
        begin
            for j := i+1 to Length(MasKyrieri)-1 do
            begin
                if MasKyrieri[i]>MasKyrieri[j] then
                begin
                    temp:=MasKyrieri[i];
                    MasKyrieri[i]:=MasKyrieri[j];
                    MasKyrieri[j]:=temp;
                end;
            end;
        end;
        j:=Length(MasKyrieri);
        i:=0;
        while j <> 0 do
        begin
            AddrCurr:=Addr1;
            while AddrCurr^.Data.MaxObiem <> MasKyrieri[i] do
                AddrCurr:=AddrCurr^.Addrcled;
            Form1.ListOfKyrieri.Lines.Add('����� �������: '+IntToStr(AddrCurr.Data.Number)+#13#10+'���: '+AddrCurr.Data.Surname+' '+AddrCurr.Data.Name+' '+AddrCurr.Data.SecondName+#13#10+'����� ������: � '+IntToStr(AddrCurr.Data.WorkTimeMin)+' �� '+IntToStr(AddrCurr.Data.WorkTimeMax)+' �����'+#13#10+'���������������� ����������: '+IntToStr(AddrCurr.Data.Gruzopodiem)+' ��'+#13#10+'������������ ����� �����: '+IntToStr(AddrCurr.Data.MaxObiem)+' �^3'+#13#10);
            dec(j);
            inc(i);
        end;
        ShowMessage('������ ������������� �������');
        ComboBox1.Text:='';
        Form6.Close;
    end;

end;

end.
