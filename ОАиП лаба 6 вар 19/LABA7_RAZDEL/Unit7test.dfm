object frmSave: TfrmSave
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'frmSave'
  ClientHeight = 116
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblSaveTitle: TLabel
    Left = 0
    Top = 0
    Width = 505
    Height = 23
    Align = alTop
    Alignment = taCenter
    Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1092#1072#1081#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 186
  end
  object lblSaveName: TLabel
    Left = 135
    Top = 52
    Width = 119
    Height = 19
    Alignment = taCenter
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object rbSaveMale: TRadioButton
    Left = 8
    Top = 29
    Width = 65
    Height = 17
    Caption = #1046#1077#1085#1080#1093#1080
    TabOrder = 0
  end
  object rbSaveFemale: TRadioButton
    Left = 71
    Top = 29
    Width = 66
    Height = 17
    Caption = #1053#1077#1074#1077#1089#1090#1099
    TabOrder = 1
  end
  object edtSave: TEdit
    Left = 8
    Top = 52
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnSaveType: TButton
    Left = 8
    Top = 91
    Width = 97
    Height = 25
    Caption = #1058#1080#1087#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1081
    TabOrder = 3
    OnClick = btnSaveTypeClick
  end
  object btnSaveText: TButton
    Left = 111
    Top = 91
    Width = 97
    Height = 25
    Caption = #1058#1077#1082#1089#1090#1086#1074#1099#1081
    TabOrder = 4
    OnClick = btnSaveTextClick
  end
end
