object Form1: TForm1
  Left = 192
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '3D '
  ClientHeight = 278
  ClientWidth = 488
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
  object pre_img: TImage
    Left = 8
    Top = 8
    Width = 256
    Height = 256
  end
  object SpeedButton1: TSpeedButton
    Left = 440
    Top = 16
    Width = 33
    Height = 33
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 440
    Top = 56
    Width = 31
    Height = 33
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object xl: TLabel
    Left = 280
    Top = 144
    Width = 10
    Height = 16
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object yl: TLabel
    Left = 280
    Top = 168
    Width = 11
    Height = 16
    Caption = 'Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object zl: TLabel
    Left = 280
    Top = 189
    Width = 10
    Height = 16
    Caption = 'Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 280
    Top = 8
    Width = 153
    Height = 129
    Caption = 'D'#246'nd'#252'rme'
    TabOrder = 0
    object XX: TLabel
      Left = 39
      Top = 24
      Width = 10
      Height = 16
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object YY: TLabel
      Left = 38
      Top = 56
      Width = 11
      Height = 16
      Caption = 'Y'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ZZ: TLabel
      Left = 39
      Top = 89
      Width = 10
      Height = 16
      Caption = 'Z'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object X: TEdit
      Left = 56
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 0
      Text = '60'
    end
    object Y: TEdit
      Left = 56
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '30'
    end
    object Z: TEdit
      Left = 56
      Top = 84
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object RX: TUpDown
      Left = 97
      Top = 24
      Width = 16
      Height = 21
      Associate = X
      Max = 359
      Position = 60
      TabOrder = 3
      OnChanging = RZChanging
    end
    object RY: TUpDown
      Left = 97
      Top = 56
      Width = 16
      Height = 21
      Associate = Y
      Max = 359
      Position = 30
      TabOrder = 4
      OnChanging = RZChanging
    end
    object RZ: TUpDown
      Left = 97
      Top = 84
      Width = 16
      Height = 21
      Associate = Z
      Max = 359
      TabOrder = 5
      OnChanging = RZChanging
    end
  end
  object CheckBox1: TCheckBox
    Left = 280
    Top = 216
    Width = 97
    Height = 17
    Caption = 'D'#246'nd'#252'r'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 408
    Top = 200
  end
end
