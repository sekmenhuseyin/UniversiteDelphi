object Form1: TForm1
  Left = 192
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personell'
  ClientHeight = 371
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = 'Personel Listesi'
  end
  object Label2: TLabel
    Left = 32
    Top = 192
    Width = 104
    Height = 13
    Caption = 'Se'#231'ili Personelin Ailesi'
  end
  object Status: TStatusBar
    Left = 0
    Top = 352
    Width = 649
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Veritaban'#305' ba'#287'l'#305' de'#287'il!'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 489
    Height = 153
    DataSource = DM.D_Personel
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TcKimNo'
        Title.Caption = 'TC Kimlik No'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adi'
        Title.Caption = 'Ad'#305
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Soyadi'
        Title.Caption = 'Soyad'#305
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_Yeri'
        Title.Caption = 'Do'#287'um Yeri'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_Tarihi'
        Title.Caption = 'Do'#287'um Tarihi'
        Visible = True
      end>
  end
  object DBImage1: TDBImage
    Left = 512
    Top = 32
    Width = 121
    Height = 129
    DataField = 'Resim'
    DataSource = DM.D_Personel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Stretch = True
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 208
    Width = 465
    Height = 120
    DataSource = DM.D_Aile
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Adi'
        Title.Caption = 'Ad'#305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Soyadi'
        Title.Caption = 'Soyad'#305
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Y_Derecesi'
        Title.Caption = 'Yak'#305'nl'#305'k Derecesi'
        Width = 104
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 608
    object Dosya1: TMenuItem
      Caption = 'Dosya'
      object VeritabannaBalan1: TMenuItem
        Caption = 'Veritaban'#305'na Ba'#287'lan'
        OnClick = VeritabannaBalan1Click
      end
      object BalantyKes1: TMenuItem
        Caption = 'Ba'#287'lant'#305'y'#305' Kes'
        OnClick = BalantyKes1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object k1: TMenuItem
        Caption = #199#305'k'#305#351
        OnClick = k1Click
      end
    end
    object Kayt1: TMenuItem
      Caption = 'Kay'#305't'
      object PersonelDzenle1: TMenuItem
        Caption = 'Personel D'#252'zenle'
        OnClick = PersonelDzenle1Click
      end
      object PersonelAilesiDzenle1: TMenuItem
        Caption = 'Personel Ailesi D'#252'zenle'
        OnClick = PersonelAilesiDzenle1Click
      end
    end
    object Raporlar1: TMenuItem
      Caption = 'Raporlar'
      object PersonelListesi1: TMenuItem
        Caption = 'Personel Listesi'
        OnClick = PersonelListesi1Click
      end
      object PersonelAilesi1: TMenuItem
        Caption = 'Personel Ailesi'
        OnClick = PersonelAilesi1Click
      end
    end
    object Yardm1: TMenuItem
      Caption = 'Yard'#305'm'
      object Hakknda1: TMenuItem
        Caption = 'Hakk'#305'nda'
        OnClick = Hakknda1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    object BalantyKur1: TMenuItem
      Caption = 'Ba'#287'lant'#305'y'#305' Kur'
      OnClick = VeritabannaBalan1Click
    end
    object BalantyKes2: TMenuItem
      Caption = 'Ba'#287'lant'#305'y'#305' Kes'
      OnClick = BalantyKes1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object k2: TMenuItem
      Caption = #199#305'k'#305#351
      OnClick = k1Click
    end
  end
end
