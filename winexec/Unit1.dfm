object Form1: TForm1
  Left = 369
  Top = 299
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Winexec'
  ClientHeight = 108
  ClientWidth = 243
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
    Left = 16
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Dosya Yol Adresi'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 72
    Width = 225
    Height = 25
    Caption = #199'ALI'#350'TIR'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 32
    Width = 75
    Height = 25
    Caption = 'G'#246'zat'
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'program|*.exe'
    Left = 208
  end
end
