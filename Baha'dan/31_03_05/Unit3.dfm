object rapForm1: TrapForm1
  Left = 297
  Top = 151
  Width = 491
  Height = 480
  Caption = 'Personel Raporu 1'
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
    Top = 8
    Width = 473
    Height = 113
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Net Maa'#351#305' 850 YTL den fazla olan Personelin Y'#252'zde Olarak Oran'#305'n'#305 +
      'n G'#246'sterimi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    WordWrap = True
  end
  object Gauge1: TGauge
    Left = 112
    Top = 144
    Width = 257
    Height = 201
    BorderStyle = bsNone
    ForeColor = clNavy
    Kind = gkPie
    Progress = 0
  end
  object Label2: TLabel
    Left = 8
    Top = 368
    Width = 468
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '................................................................' +
      '............'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 400
    Width = 193
    Height = 25
    Caption = 'Rapor Haz'#305'rla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
