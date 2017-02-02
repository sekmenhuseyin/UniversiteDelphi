object hesapForm: ThesapForm
  Left = 179
  Top = 114
  Width = 815
  Height = 477
  Caption = 'D'#246'rt '#221#254'lem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object s2Label: TLabel
    Left = 19
    Top = 105
    Width = 50
    Height = 20
    Caption = 'Say'#253' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object isTipabel: TLabel
    Left = 19
    Top = 136
    Width = 77
    Height = 20
    Caption = #221#254'lem Tipi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sonLabel: TLabel
    Left = 18
    Top = 240
    Width = 252
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '................................................................' +
      '....................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object s1Label: TLabel
    Left = 18
    Top = 72
    Width = 50
    Height = 20
    Caption = 'Say'#253' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sayi1Edit: TEdit
    Left = 114
    Top = 64
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object sayi2Edit: TEdit
    Left = 114
    Top = 96
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0'
  end
  object tipCombo: TComboBox
    Left = 114
    Top = 128
    Width = 169
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'Toplama'
    Items.Strings = (
      'Toplama'
      #199#253'karma'
      #199'arpma'
      'B'#246'lme')
  end
  object hspBtn: TButton
    Left = 66
    Top = 184
    Width = 145
    Height = 41
    Caption = 'Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = hspBtnClick
  end
  object tipRadioGroup: TRadioGroup
    Left = 298
    Top = 64
    Width = 223
    Height = 97
    Caption = ' D'#246'rt '#221#254'lem '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Toplama'
      #199#253'karma'
      #199'arpma'
      'B'#246'lme')
    ParentFont = False
    TabOrder = 4
  end
  object Memo: TMemo
    Left = 290
    Top = 176
    Width = 239
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Bu basit bir d'#246'rt i'#254'lem '
      'ger'#231'ekle'#254'tiren '
      'hesap makinesinin Borland '
      'Delphi 7 '
      'de haz'#253'rlanm'#253#254' '
      'versiyonudur')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object Button1: TButton
    Left = 10
    Top = 292
    Width = 273
    Height = 33
    Caption = 'Memobox'#39#253'n i'#231'erisini TEM'#221'ZLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 10
    Top = 328
    Width = 273
    Height = 27
    Caption = 'Memo Test Butonu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 4
    Width = 801
    Height = 61
    BevelInner = bvSpace
    BevelOuter = bvLowered
    BevelWidth = 5
    Caption = 'D'#246'rt '#221#254'lem Makinesi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object Panel2: TPanel
    Left = 2
    Top = 400
    Width = 800
    Height = 41
    BevelOuter = bvLowered
    BevelWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object ListBox1: TListBox
    Left = 528
    Top = 73
    Width = 275
    Height = 88
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 20
    Items.Strings = (
      'Toplama'
      #199#253'karma'
      #199'arpma'
      'B'#246'lme')
    ParentFont = False
    TabOrder = 10
  end
  object Button3: TButton
    Left = 536
    Top = 168
    Width = 249
    Height = 41
    Caption = 'ListBox Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button3Click
  end
end
