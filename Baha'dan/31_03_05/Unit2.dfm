object pForm: TpForm
  Left = 358
  Top = 244
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personel Kay'#305't Formu'
  ClientHeight = 285
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 68
    Height = 20
    Caption = 'Cinsiyeti'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 112
    Width = 95
    Height = 20
    Caption = 'Do'#287'um Yeri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 296
    Top = 112
    Width = 107
    Height = 20
    Caption = 'Do'#287'um Tarihi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object perSicilEdit: TLabeledEdit
    Left = 7
    Top = 27
    Width = 121
    Height = 21
    EditLabel.Width = 102
    EditLabel.Height = 20
    EditLabel.Caption = 'Pers.Sicil No'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 0
  end
  object adEdit: TLabeledEdit
    Left = 7
    Top = 74
    Width = 183
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 20
    EditLabel.Caption = 'Ad'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 1
  end
  object soyadEdit: TLabeledEdit
    Left = 197
    Top = 73
    Width = 183
    Height = 21
    EditLabel.Width = 55
    EditLabel.Height = 20
    EditLabel.Caption = 'Soyad'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 2
  end
  object bMaasEdit: TLabeledEdit
    Left = 8
    Top = 192
    Width = 135
    Height = 21
    EditLabel.Width = 87
    EditLabel.Height = 20
    EditLabel.Caption = 'Br'#252't Maa'#351#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 6
    Text = '0'
  end
  object kesEdit: TLabeledEdit
    Left = 154
    Top = 192
    Width = 111
    Height = 21
    EditLabel.Width = 113
    EditLabel.Height = 20
    EditLabel.Caption = 'Kesinti Miktar'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 7
    Text = '0'
  end
  object cinsCombo: TComboBox
    Left = 8
    Top = 136
    Width = 97
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Erkek'
    Items.Strings = (
      'Erkek'
      'Kad'#305'n')
  end
  object dogYerCombo: TComboBox
    Left = 152
    Top = 136
    Width = 97
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'Adana'
    Items.Strings = (
      'Adana'
      'Ad'#305'yaman'
      'Afyon'
      'Ankara'
      'Bursa'
      #304'stanbul'
      '')
  end
  object dogTar: TDateTimePicker
    Left = 296
    Top = 136
    Width = 113
    Height = 21
    Date = 38442.391368807870000000
    Time = 38442.391368807870000000
    TabOrder = 5
  end
  object nMaasEdit: TLabeledEdit
    Left = 290
    Top = 192
    Width = 135
    Height = 21
    EditLabel.Width = 81
    EditLabel.Height = 20
    EditLabel.Caption = 'Net Maa'#351#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '0'
  end
  object BitBtn1: TBitBtn
    Left = 132
    Top = 242
    Width = 105
    Height = 33
    Caption = '&Kaydet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 12
    Top = 242
    Width = 105
    Height = 33
    Caption = '&Yeni'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 316
    Top = 242
    Width = 105
    Height = 33
    Caption = 'Kapa&t'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
  end
end
