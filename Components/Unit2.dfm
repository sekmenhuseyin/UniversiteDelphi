object Form2: TForm2
  Left = 479
  Top = 175
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Grafik'
  ClientHeight = 513
  ClientWidth = 530
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
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 472
    Width = 513
    Height = 33
    Caption = 'Aktivate'
    OnClick = SpeedButton1Click
  end
  object TrackBar1: TTrackBar
    Left = 0
    Top = 440
    Width = 529
    Height = 27
    Max = 360
    Frequency = 10
    TabOrder = 1
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 513
    Height = 433
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Gradient.EndColor = 12615680
    Gradient.Visible = True
    Title.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clGray
    Title.Font.Height = -27
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsUnderline]
    Title.Text.Strings = (
      'Sebzeler')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.Alignment = laBottom
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    BevelInner = bvRaised
    BevelWidth = 4
    Color = clBlack
    TabOrder = 0
    object Series1: TPieSeries
      Marks.Arrow.Color = clBlack
      Marks.ArrowLength = 8
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -11
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsBold]
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      object TeeFunction1: TAverageTeeFunction
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 32
    Top = 40
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer2Timer
    Left = 8
    Top = 472
  end
end
