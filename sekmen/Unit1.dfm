object Form1: TForm1
  Left = 192
  Top = 114
  Width = 565
  Height = 356
  Caption = 'main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'set active'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'rapor'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 40
    Width = 489
    Height = 89
    DataSource = Form2.DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 184
    Width = 489
    Height = 89
    DataSource = Form2.DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 136
    Width = 240
    Height = 25
    DataSource = Form2.DataSource1
    TabOrder = 4
  end
  object DBNavigator2: TDBNavigator
    Left = 16
    Top = 280
    Width = 240
    Height = 25
    DataSource = Form2.DataSource2
    TabOrder = 5
  end
  object Button3: TButton
    Left = 272
    Top = 136
    Width = 75
    Height = 25
    Caption = 'sonraki'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 352
    Top = 136
    Width = 75
    Height = 25
    Caption = #246'nceki'
    TabOrder = 7
    OnClick = Button4Click
  end
end
