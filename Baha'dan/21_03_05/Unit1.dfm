object Form1: TForm1
  Left = 178
  Top = 111
  BorderStyle = bsDialog
  Caption = 'Resim G'#246'sterici'
  ClientHeight = 536
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 4
    Top = 2
    Width = 805
    Height = 471
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Resim G'#246'sterici B'#246'l'#252'm'
      object Image1: TImage
        Left = 5
        Top = 6
        Width = 345
        Height = 265
      end
      object Edit1: TEdit
        Left = 12
        Top = 280
        Width = 334
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'C:\*.*'
      end
      object BitBtn1: TBitBtn
        Left = 24
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Y'#252'kle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object CheckBox1: TCheckBox
        Left = 128
        Top = 322
        Width = 103
        Height = 21
        Caption = 'Si'#287'd'#305'r'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object BitBtn2: TBitBtn
        Left = 264
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Temizle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object LabeledEdit1: TLabeledEdit
        Left = 408
        Top = 40
        Width = 257
        Height = 32
        EditLabel.Width = 146
        EditLabel.Height = 29
        EditLabel.Caption = 'Ad'#305' ve Soyad'#305
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clRed
        EditLabel.Font.Height = -24
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LabelSpacing = 0
        ParentFont = False
        TabOrder = 4
        Text = 'Ali Veli 4950'
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2.Deneme B'#246'l'#252'm'#252
      ImageIndex = 1
      object Label1: TLabel
        Left = 360
        Top = 104
        Width = 32
        Height = 60
        Caption = '0'
        Font.Charset = TURKISH_CHARSET
        Font.Color = clRed
        Font.Height = -53
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 356
        Top = 104
        Width = 32
        Height = 60
        Caption = '0'
        Font.Charset = TURKISH_CHARSET
        Font.Color = clBlue
        Font.Height = -53
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object TrackBar1: TTrackBar
        Left = 16
        Top = 16
        Width = 753
        Height = 49
        Max = 100
        TabOrder = 0
        OnChange = TrackBar1Change
      end
      object ProgressBar1: TProgressBar
        Left = 31
        Top = 56
        Width = 721
        Height = 25
        Smooth = True
        Step = 1
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 401
        Top = 256
        Width = 16
        Height = 45
        Associate = Edit2
        Increment = 5
        TabOrder = 2
      end
      object Edit2: TEdit
        Left = 320
        Top = 256
        Width = 81
        Height = 45
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0'
        OnChange = Edit2Change
      end
    end
    object TabSheet3: TTabSheet
      Caption = '3.Deneme B'#246'l'#252'm'#252
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = '4.Deneme B'#246'l'#252'm'#252
      ImageIndex = 3
    end
  end
  object BitBtn3: TBitBtn
    Left = 376
    Top = 488
    Width = 75
    Height = 25
    Caption = #199#305'k'#305#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn3Click
  end
end
