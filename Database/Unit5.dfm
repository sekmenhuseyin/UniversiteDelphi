object Form5: TForm5
  Left = 168
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Personel Bilgisi D'#252'zenle'
  ClientHeight = 434
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 392
    Width = 353
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
    Left = 8
    Top = 8
    Width = 353
    Height = 345
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 48
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
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 110
      Height = 13
      Caption = 'TC Kimlik Numaras'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 72
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
      Left = 16
      Top = 96
      Width = 66
      Height = 13
      Caption = 'Do'#287'um Yeri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 120
      Width = 76
      Height = 13
      Caption = 'Do'#287'um Tarihi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 144
      Width = 35
      Height = 13
      Caption = 'Resmi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 136
      Top = 312
      Width = 201
      Height = 25
      Caption = 'Resim Ekle'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 64
      Width = 201
      Height = 21
      DataField = 'Soyadi'
      DataSource = DM.D_Personel
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 40
      Width = 201
      Height = 21
      DataField = 'Adi'
      DataSource = DM.D_Personel
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 16
      Width = 201
      Height = 21
      DataField = 'TcKimNo'
      DataSource = DM.D_Personel
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 136
      Top = 112
      Width = 201
      Height = 21
      DataField = 'D_Tarihi'
      DataSource = DM.D_Personel
      TabOrder = 3
    end
    object DBImage1: TDBImage
      Left = 136
      Top = 144
      Width = 201
      Height = 161
      DataField = 'Resim'
      DataSource = DM.D_Personel
      Stretch = True
      TabOrder = 4
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 360
    Width = 350
    Height = 25
    DataSource = DM.D_Personel
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
    OnClick = DBNavigator1Click
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 96
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Adana'
      'Ad'#305'yaman'
      'Afyon'
      'A'#287'r'#305
      'Amasya'
      'Ankara'
      'Antalya'
      'Artvin'
      'Ayd'#305'n'
      'Bal'#305'kesir'
      'Bilecik'
      'Bing'#246'l'
      'Bitlis'
      'Bolu'
      'Burdur'
      'Bursa'
      #199'anakkale'
      #199'ank'#305'r'#305
      #199'orum'
      'Denizli')
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 176
    Width = 89
    Height = 21
    DataField = 'D_Yeri'
    DataSource = DM.D_Personel
    TabOrder = 3
    Visible = False
  end
  object Open: TOpenDialog
    Filter = 'Resim Dosyalar'#305'|*.bmp'
    InitialDir = 'c:\windows'
    Title = 'Personel Resmi A'#231
    Left = 144
    Top = 320
  end
end
