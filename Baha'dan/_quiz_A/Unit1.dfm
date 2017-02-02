object Form1: TForm1
  Left = 349
  Top = 86
  Width = 373
  Height = 484
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Dizi elemanlar'#305
  end
  object Label2: TLabel
    Left = 282
    Top = 9
    Width = 42
    Height = 13
    Caption = 'S'#305'ral'#305' Dizi'
  end
  object Gauge1: TGauge
    Left = 9
    Top = 275
    Width = 177
    Height = 169
    BorderStyle = bsNone
    ForeColor = clNavy
    Kind = gkPie
    Progress = 0
  end
  object Label3: TLabel
    Left = 192
    Top = 328
    Width = 161
    Height = 41
    AutoSize = False
    Caption = '% olarak 50 den b'#252'y'#252'k olan say'#305'lar'
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
    Left = 192
    Top = 24
    Width = 81
    Height = 145
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 280
    Top = 24
    Width = 81
    Height = 145
    Lines.Strings = (
      'Memo2')
    ReadOnly = True
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 6
    Top = 177
    Width = 355
    Height = 29
    Caption = 'Dizi Ortalamas'#305' = '
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
    Width = 355
    Height = 29
    Caption = 'Dizideki En K'#252#231#252'k Say'#305' = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Panel3: TPanel
    Left = 6
    Top = 241
    Width = 355
    Height = 29
    Caption = 'Dizideki En B'#252'y'#252'k Say'#305' = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 248
    Top = 408
    Width = 97
    Height = 25
    Caption = 'Kapat'
    TabOrder = 8
  end
  object BitBtn3: TBitBtn
    Left = 16
    Top = 138
    Width = 97
    Height = 25
    Caption = '&'#199#246'z'#252'm'
    TabOrder = 9
    OnClick = BitBtn3Click
  end
end
