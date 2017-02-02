object Form1: TForm1
  Left = 244
  Top = 108
  Width = 441
  Height = 462
  Caption = 'Form1'
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
    Left = 144
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Dizi elemanlar'#305
  end
  object Label2: TLabel
    Left = 234
    Top = 9
    Width = 93
    Height = 13
    Caption = 'Dizideki Tek Say'#305'lar'
  end
  object Gauge1: TGauge
    Left = 9
    Top = 251
    Width = 120
    Height = 118
    BorderStyle = bsNone
    ForeColor = clNavy
    Kind = gkPie
    Progress = 0
  end
  object Label3: TLabel
    Left = 32
    Top = 376
    Width = 81
    Height = 41
    AutoSize = False
    Caption = '% olarak Tek say'#305'lar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 333
    Top = 9
    Width = 89
    Height = 13
    Caption = 'Dizideki '#199'ift Say'#305'lar'
  end
  object Gauge2: TGauge
    Left = 169
    Top = 251
    Width = 120
    Height = 118
    BorderStyle = bsNone
    ForeColor = clNavy
    Kind = gkPie
    Progress = 0
  end
  object Label5: TLabel
    Left = 192
    Top = 376
    Width = 81
    Height = 41
    AutoSize = False
    Caption = '% olarak '#199'ift say'#305'lar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object diznoEdit: TLabeledEdit
    Left = 8
    Top = 24
    Width = 73
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Dizi No'
    TabOrder = 0
  end
  object sayEdit: TLabeledEdit
    Left = 8
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = 'Say'#305
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 104
    Width = 97
    Height = 25
    Caption = 'Diziye Ekle'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 144
    Top = 24
    Width = 81
    Height = 145
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 232
    Top = 24
    Width = 97
    Height = 145
    Lines.Strings = (
      'Memo2')
    ReadOnly = True
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 6
    Top = 177
    Width = 421
    Height = 29
    Caption = 'Tek Say'#305'lar'#305'n Toplam'#305' = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 6
    Top = 209
    Width = 421
    Height = 29
    Caption = #199'ift Say'#305'lar'#305'n Karesinin Toplam'#305' = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 384
    Width = 97
    Height = 25
    Caption = 'Kapat'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 138
    Width = 97
    Height = 25
    Caption = '&'#199#246'z'#252'm'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object Memo3: TMemo
    Left = 331
    Top = 24
    Width = 97
    Height = 145
    Lines.Strings = (
      'Memo3')
    ReadOnly = True
    TabOrder = 9
  end
end
