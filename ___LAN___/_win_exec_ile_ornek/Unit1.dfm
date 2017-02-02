object Form1: TForm1
  Left = 415
  Top = 126
  Width = 305
  Height = 109
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
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 0
    Text = '172.16.200.1'
  end
  object Button1: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ping'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button2Click
  end
end
