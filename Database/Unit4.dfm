object Form4: TForm4
  Left = 215
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personel Ailesi D'#252'zenle'
  ClientHeight = 258
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 40
    Top = 16
    Width = 145
    Height = 25
    DataField = 'TcKimNo'
    DataSource = DM.D_Personel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 48
    Width = 291
    Height = 20
    Caption = ' TC Kimlik Numaral'#305' Personelin Ailesi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 16
    Top = 215
    Width = 321
    Height = 33
    Caption = #304'ptal'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 80
    Width = 321
    Height = 97
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Soyad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 100
      Height = 13
      Caption = 'Yak'#305'nl'#305'k Derecesi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 104
      Top = 16
      Width = 33
      Height = 21
      DataField = 'TcKimNo'
      DataSource = DM.D_Aile
      TabOrder = 3
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 16
      Width = 169
      Height = 21
      DataField = 'Adi'
      DataSource = DM.D_Aile
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 40
      Width = 169
      Height = 21
      DataField = 'Soyadi'
      DataSource = DM.D_Aile
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 64
      Width = 169
      Height = 21
      DataField = 'Y_Derecesi'
      DataSource = DM.D_Aile
      TabOrder = 2
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 184
    Width = 320
    Height = 25
    DataSource = DM.D_Aile
    Hints.Strings = (
      #304'lk Kay'#305't'
      #214'nceki Kay'#305't'
      'Sonraki Kay'#305't'
      'Son Kay'#305't'
      'Kay'#305't Ekle'
      'Kay'#305't Sil'
      'Kay'#305't D'#252'zenle'
      'De'#287'i'#351'iklikleri Kaydet'
      'De'#287'i'#351'iklikleri '#304'ptal et'
      'Yenile')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
end
