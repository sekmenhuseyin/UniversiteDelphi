object anaForm: TanaForm
  Left = 189
  Top = 114
  Width = 640
  Height = 265
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Deneme Prog v1.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object yariCapLabel: TLabel
    Left = 3
    Top = 15
    Width = 138
    Height = 20
    Caption = 'Dairenin Yar'#305#231'ap'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object alanLabel: TLabel
    Left = 195
    Top = 175
    Width = 113
    Height = 20
    Caption = 'Dairenin Alan'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object yariCapEdit: TEdit
    Left = 152
    Top = 8
    Width = 209
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object alanBtn: TButton
    Left = 448
    Top = 16
    Width = 150
    Height = 33
    Caption = 'Alan Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = alanBtnClick
  end
  object cikisBtn: TButton
    Left = 448
    Top = 64
    Width = 150
    Height = 33
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = cikisBtnClick
  end
  object testBtn: TButton
    Left = 24
    Top = 80
    Width = 161
    Height = 41
    Caption = 'Test Butonu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = testBtnClick
  end
  object Button1: TButton
    Left = 192
    Top = 80
    Width = 161
    Height = 41
    Caption = 'Test Butonu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
end
