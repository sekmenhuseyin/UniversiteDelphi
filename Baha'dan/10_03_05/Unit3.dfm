object Form1: TForm1
  Left = 252
  Top = 105
  Width = 350
  Height = 424
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
    Left = 6
    Top = 10
    Width = 40
    Height = 24
    Caption = 'Say'#253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 192
    Top = 104
    Width = 145
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = '........................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 54
    Top = 4
    Width = 105
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object Button1: TButton
    Left = 62
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 2
    Top = 82
    Width = 182
    Height = 305
    Color = clScrollBar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Button2: TButton
    Left = 187
    Top = 43
    Width = 149
    Height = 34
    Caption = 'Toplam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 187
    Top = 5
    Width = 149
    Height = 34
    Caption = 'S'#253'rala'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 188
    Top = 349
    Width = 149
    Height = 34
    Caption = '&'#199#253'k'#253#254
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 192
    Top = 208
    Width = 25
    Height = 25
    Caption = '-C-'
    TabOrder = 6
    OnClick = Button5Click
  end
end
