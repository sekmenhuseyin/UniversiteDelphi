object yeniForm: TyeniForm
  Left = 303
  Top = 147
  BorderStyle = bsSingle
  Caption = 'Yeni Kay'#305't Formu'
  ClientHeight = 312
  ClientWidth = 310
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
    Left = 6
    Top = 99
    Width = 52
    Height = 16
    Caption = 'B'#246'l'#252'm'#252
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 159
    Top = 100
    Width = 60
    Height = 16
    Caption = 'Cinsiyeti'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 6
    Top = 153
    Width = 94
    Height = 16
    Caption = 'Do'#287'um Tarihi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ogrNoText: TLabeledEdit
    Left = 3
    Top = 23
    Width = 121
    Height = 21
    EditLabel.Width = 125
    EditLabel.Height = 16
    EditLabel.Caption = #214#287'renci Numaras'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 0
  end
  object adText: TLabeledEdit
    Left = 3
    Top = 66
    Width = 149
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 16
    EditLabel.Caption = 'Ad'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 1
  end
  object soyadText: TLabeledEdit
    Left = 156
    Top = 66
    Width = 149
    Height = 21
    EditLabel.Width = 50
    EditLabel.Height = 16
    EditLabel.Caption = 'Soyad'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 2
  end
  object bolumText: TComboBox
    Left = 5
    Top = 118
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Bilg.Tekno.ve '#214#287'r.'
    Items.Strings = (
      'Bilg.Tekno.ve '#214#287'r.'
      'S.B.'#214'.'
      'P.D.R'
      #214'.E.')
  end
  object cinsText: TComboBox
    Left = 157
    Top = 117
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'Erkek'
    Items.Strings = (
      'Erkek'
      'Kad'#305'n')
  end
  object dt1: TDateTimePicker
    Left = 7
    Top = 173
    Width = 95
    Height = 21
    Date = 38439.446553449070000000
    Time = 38439.446553449070000000
    TabOrder = 5
  end
  object vizeText: TLabeledEdit
    Left = 9
    Top = 224
    Width = 74
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 16
    EditLabel.Caption = 'Vize'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 6
    Text = '0'
  end
  object finalText: TLabeledEdit
    Left = 88
    Top = 224
    Width = 74
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 16
    EditLabel.Caption = 'Final'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 7
    Text = '0'
  end
  object ortText: TLabeledEdit
    Left = 166
    Top = 224
    Width = 74
    Height = 21
    EditLabel.Width = 64
    EditLabel.Height = 16
    EditLabel.Caption = 'Ortalama'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '0'
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 280
    Width = 75
    Height = 25
    Caption = '&Yeni'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 280
    Width = 75
    Height = 25
    Caption = '&Kaydet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 224
    Top = 280
    Width = 75
    Height = 25
    Caption = '&Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn3Click
  end
end
