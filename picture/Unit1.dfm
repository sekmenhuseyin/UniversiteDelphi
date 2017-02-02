object Form1: TForm1
  Left = 194
  Top = 113
  BorderStyle = bsSingle
  Caption = 'Components'
  ClientHeight = 538
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 504
    Width = 561
    Height = 25
    Caption = #199'IKI'#350
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 561
    Height = 489
    ActivePage = TabSheet4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Resim G'#246'sterici'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Image1: TImage
        Left = 48
        Top = 12
        Width = 401
        Height = 337
        Center = True
      end
      object GroupBox1: TGroupBox
        Left = 56
        Top = 364
        Width = 385
        Height = 89
        TabOrder = 0
        object le1: TLabeledEdit
          Left = 8
          Top = 24
          Width = 265
          Height = 21
          EditLabel.Width = 102
          EditLabel.Height = 16
          EditLabel.Caption = 'Konumu Giriniz'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -15
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          LabelSpacing = 10
          TabOrder = 1
          Text = 'C:\WINDOWS\greenstone.bmp'
        end
        object Button1: TButton
          Left = 280
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Y'#252'kle'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 280
          Top = 56
          Width = 97
          Height = 25
          Caption = 'Temizle'
          TabOrder = 2
          OnClick = Button2Click
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 64
          Width = 97
          Height = 17
          Caption = 'S'#305#287'd'#305'r'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = CheckBox1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Garip'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label2: TLabel
        Left = 323
        Top = 86
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 322
        Top = 87
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ProgressBar1: TProgressBar
        Left = 16
        Top = 48
        Width = 513
        Height = 17
        Max = 450
        TabOrder = 0
      end
      object TrackBar1: TTrackBar
        Left = 8
        Top = 16
        Width = 529
        Height = 25
        Max = 450
        TabOrder = 1
        OnChange = TrackBar1Change
      end
      object UpDown1: TUpDown
        Left = 505
        Top = 88
        Width = 16
        Height = 21
        Associate = Edit1
        Max = 450
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 384
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '0'
        OnChange = Edit1Change
      end
      object MediaPlayer1: TMediaPlayer
        Left = 376
        Top = 424
        Width = 85
        Height = 30
        EnabledButtons = [btPlay, btPause, btStop, btStep, btBack, btRecord, btEject]
        VisibleButtons = [btPlay, btPause, btStop]
        Display = Edit2
        TabOrder = 4
        OnClick = MediaPlayer1Click
      end
      object Edit2: TEdit
        Left = 0
        Top = 120
        Width = 369
        Height = 337
        AutoSize = False
        TabOrder = 5
      end
      object CheckBox2: TCheckBox
        Left = 384
        Top = 120
        Width = 97
        Height = 17
        Caption = 'Otomatik'
        TabOrder = 6
        OnClick = CheckBox2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Timer'
      ImageIndex = 2
      object Label11: TLabel
        Left = 322
        Top = 375
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 226
        Top = 127
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 227
        Top = 126
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 336
        Top = 416
        Width = 81
        Height = 16
        Caption = 'Timer interval'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 322
        Top = 255
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 323
        Top = 254
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 322
        Top = 335
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 323
        Top = 334
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 322
        Top = 295
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 323
        Top = 294
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 323
        Top = 374
        Width = 14
        Height = 26
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button3: TButton
        Left = 408
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Button3'
        TabOrder = 0
      end
      object CheckBox3: TCheckBox
        Left = 40
        Top = 416
        Width = 97
        Height = 17
        Caption = 'Timer enabled'
        TabOrder = 1
        OnClick = CheckBox3Click
      end
      object ProgressBar2: TProgressBar
        Left = 32
        Top = 256
        Width = 289
        Height = 25
        TabOrder = 2
      end
      object ProgressBar3: TProgressBar
        Left = 32
        Top = 296
        Width = 289
        Height = 25
        TabOrder = 3
      end
      object ProgressBar4: TProgressBar
        Left = 32
        Top = 336
        Width = 289
        Height = 25
        TabOrder = 4
      end
      object ProgressBar5: TProgressBar
        Left = 32
        Top = 376
        Width = 289
        Height = 25
        TabOrder = 5
      end
      object Edit3: TEdit
        Left = 424
        Top = 416
        Width = 89
        Height = 21
        TabOrder = 6
        Text = '1000'
        OnChange = Edit3Change
        OnKeyPress = Edit3KeyPress
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Gauge'
      ImageIndex = 3
      object Gauge1: TGauge
        Left = 24
        Top = 208
        Width = 457
        Height = 241
        BorderStyle = bsNone
        Kind = gkNeedle
        Progress = 0
      end
      object TrackBar2: TTrackBar
        Left = 24
        Top = 168
        Width = 457
        Height = 37
        Max = 100
        TabOrder = 0
        OnChange = TrackBar2Change
      end
      object DateTimePicker1: TDateTimePicker
        Left = 32
        Top = 24
        Width = 186
        Height = 21
        Date = 38439.413060613430000000
        Time = 38439.413060613430000000
        TabOrder = 1
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 536
    Top = 32
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 536
    Top = 56
  end
end
