object Form1: TForm1
  Left = 104
  Top = 90
  BorderStyle = bsSingle
  Caption = 'Personel Bilgi Sistemi'
  ClientHeight = 426
  ClientWidth = 688
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
  object tlabel: TLabel
    Left = 632
    Top = 400
    Width = 42
    Height = 13
    Caption = '00:00:00'
  end
  object Panel1: TPanel
    Left = 2
    Top = 0
    Width = 684
    Height = 385
    BevelOuter = bvLowered
    BevelWidth = 2
    Caption = 'PBS'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Personellemleri1: TMenuItem
      Caption = '&Personel '#304#351'lemleri'
      object PersonelKayt1: TMenuItem
        Caption = 'Personel &Kay'#305't'
        OnClick = PersonelKayt1Click
      end
      object PersonelSil1: TMenuItem
        Caption = 'Personel &Sil'
      end
      object PersonelKaytDzelt1: TMenuItem
        Caption = '&Personel Kay'#305't &D'#252'zelt'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object YazcAyarlar1: TMenuItem
        Caption = '&Yaz'#305'c'#305' Ayarlar'#305
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object YeniDosyaOlutur1: TMenuItem
        Caption = 'Yeni Dosya &Olu'#351'tur'
        OnClick = YeniDosyaOlutur1Click
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
      object PersonelRaporu11: TMenuItem
        Caption = 'Personel Raporu 1'
        OnClick = PersonelRaporu11Click
      end
    end
    object Yardm1: TMenuItem
      Caption = '&Yard'#305'm'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 392
  end
end
