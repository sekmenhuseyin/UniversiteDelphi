object Form1: TForm1
  Left = 192
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resim'
  ClientHeight = 336
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 393
    Height = 289
    Stretch = True
  end
  object SpeedButton1: TSpeedButton
    Left = 312
    Top = 304
    Width = 89
    Height = 22
    Caption = 'Ac'
    OnClick = SpeedButton1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 304
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Open: TOpenDialog
    FileName = 'C:\WINDOWS\FeatherTexture.bmp'
    Filter = 'BMP|*.bmp|JPG;JPEG|*.jpg;*.jpeg|GIF|*.gif|Tum Dosyalar|*.*'
    FilterIndex = 0
    InitialDir = 'c:\windows'
    Title = 'Resim Dosyasi Ac'
    Left = 376
    Top = 296
  end
end
