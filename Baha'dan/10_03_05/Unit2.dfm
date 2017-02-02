object Form1: TForm1
  Left = 180
  Top = 122
  Width = 361
  Height = 127
  Caption = 'Faktoriyel Hesapla (Recursive)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 353
    Height = 41
    Align = alBottom
    BevelWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 51
    Align = alTop
    BevelOuter = bvLowered
    BevelWidth = 3
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 20
      Caption = 'Say'#253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 161
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnChange = Edit1Change
    end
  end
end
