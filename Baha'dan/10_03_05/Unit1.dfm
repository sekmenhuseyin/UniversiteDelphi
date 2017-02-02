object deneForm: TdeneForm
  Left = 31
  Top = 76
  Width = 695
  Height = 488
  Caption = 'Deneme Formu'
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
    Top = 0
    Width = 687
    Height = 54
    Align = alTop
    BevelWidth = 4
    Caption = 'Deneme Program'#253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 3
    Top = 57
    Width = 264
    Height = 80
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 50
      Height = 20
      Caption = 'Sayi 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 52
      Width = 50
      Height = 20
      Caption = 'Sayi 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 87
      Top = 11
      Width = 169
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
    object Edit2: TEdit
      Left = 88
      Top = 43
      Width = 169
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
  end
  object Panel3: TPanel
    Left = 4
    Top = 140
    Width = 264
    Height = 79
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 2
    object tipCombo: TComboBox
      Left = 8
      Top = 8
      Width = 249
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Toplama'
      Items.Strings = (
        'Toplama'
        #199#253'karma'
        #199'arpma'
        'B'#246'lme')
    end
    object Button1: TButton
      Left = 56
      Top = 40
      Width = 153
      Height = 33
      Caption = '&Hesapla'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 413
    Width = 687
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    BevelWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object tiGrup: TRadioGroup
    Left = 272
    Top = 56
    Width = 217
    Height = 81
    Caption = ' '#221#254'lemler '
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
  object Button2: TButton
    Left = 288
    Top = 144
    Width = 137
    Height = 33
    Caption = '&Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 492
    Top = 59
    Width = 185
    Height = 98
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    Items.Strings = (
      'Toplama'
      #199#253'karma'
      #199'arpma'
      'B'#246'lme')
    ParentFont = False
    TabOrder = 6
  end
  object Button3: TButton
    Left = 508
    Top = 163
    Width = 153
    Height = 36
    Caption = '&Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 5
    Top = 224
    Width = 388
    Height = 113
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Bu bir memobox deneme metnidir. Test ama'#231'l'#253' '
      'yaz'#253'lm'#253#254't'#253'r. vs. vs.')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object Button4: TButton
    Left = 274
    Top = 195
    Width = 41
    Height = 25
    Caption = '-T-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 320
    Top = 194
    Width = 177
    Height = 25
    Caption = 'Memo Test butonu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button5Click
  end
end
