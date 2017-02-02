object mainForm: TmainForm
  Left = 309
  Top = 204
  Width = 640
  Height = 400
  Caption = 'Deneme v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object baslikLabel: TLabel
    Left = 80
    Top = 8
    Width = 423
    Height = 24
    Caption = 'Dikd'#246'rtgenin alan'#305'n'#305' hesaplayan Form '#214'rne'#287'i'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object aLabel: TLabel
    Left = 24
    Top = 48
    Width = 110
    Height = 24
    Caption = 'Uzun Kenar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bLabel: TLabel
    Left = 24
    Top = 88
    Width = 101
    Height = 24
    Caption = 'K'#305'sa Kenar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sonucLabel: TLabel
    Left = 104
    Top = 168
    Width = 427
    Height = 24
    Caption = 
      '................................................................' +
      '.......'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object aEdit: TEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 29
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object bEdit: TEdit
    Left = 144
    Top = 82
    Width = 121
    Height = 29
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object HesaplaBtn: TButton
    Left = 416
    Top = 56
    Width = 145
    Height = 49
    Caption = 'Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = HesaplaBtnClick
  end
  object TestBtn1: TButton
    Left = 32
    Top = 248
    Width = 75
    Height = 25
    Caption = 'G'#246'ster'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = TestBtn1Click
  end
  object TestBtn2: TButton
    Left = 32
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Sakla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = TestBtn2Click
  end
  object kapatBtn: TButton
    Left = 440
    Top = 264
    Width = 153
    Height = 33
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = kapatBtnClick
  end
  object TestBtn3: TButton
    Left = 136
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Aktif'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = TestBtn3Click
  end
  object TestBtn4: TButton
    Left = 136
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Pasif'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = TestBtn4Click
  end
end
