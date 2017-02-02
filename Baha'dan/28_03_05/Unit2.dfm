object anaForm: TanaForm
  Left = 136
  Top = 91
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #214#287'renci Kimlik Bilgi Sistemi v1.0'
  ClientHeight = 380
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 152
    Width = 223
    Height = 37
    Caption = 'O.K.B.S. v1.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 456
    Top = 352
    Width = 137
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '........................'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Dosya1: TMenuItem
      Caption = '&Dosya'
      object YeniKayt1: TMenuItem
        Caption = 'Dosya &Olu'#351'tur'
        OnClick = YeniKayt1Click
      end
      object DosyaSil1: TMenuItem
        Caption = 'Dosya &Sil'
        OnClick = DosyaSil1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object YeniKayt2: TMenuItem
        Caption = '&Yeni Kay'#305't'
        OnClick = YeniKayt2Click
      end
      object KaytSil1: TMenuItem
        Caption = 'Kay'#305't Si&l'
        OnClick = KaytSil1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object YazcAyarlar1: TMenuItem
        Caption = 'Yaz'#305'c'#305' &Ayarlar'#305
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object k1: TMenuItem
        Caption = '&'#199#305'k'#305#351
        OnClick = k1Click
      end
    end
    object Raporlar1: TMenuItem
      Caption = '&Raporlar'
      object KaytAra1: TMenuItem
        Caption = 'Kay'#305't A&ra'
        OnClick = KaytAra1Click
      end
      object Grafik11: TMenuItem
        Caption = 'Ba'#351'ar'#305' Grafi'#287'i'
        OnClick = Grafik11Click
      end
      object Grafik21: TMenuItem
        Caption = 'Grafik 2'
      end
    end
    object Yardm1: TMenuItem
      Caption = 'Yard'#305'm'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 8
  end
end
