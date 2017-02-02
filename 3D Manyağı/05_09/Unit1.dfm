object Form1: TForm1
  Left = 192
  Top = 191
  Width = 769
  Height = 547
  Caption = 'Form1'
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
  object Label1: TLabel
    Left = 72
    Top = 392
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 216
    Top = 392
    Width = 7
    Height = 13
    Caption = 'Y'
  end
  object Label3: TLabel
    Left = 360
    Top = 392
    Width = 7
    Height = 13
    Caption = 'Z'
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 16
    Top = 16
    Width = 425
    Height = 313
    Camera = GLCamera1
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 352
    Width = 49
    Height = 25
    Caption = '+'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 352
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 168
    Top = 352
    Width = 49
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 232
    Top = 352
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 312
    Top = 352
    Width = 49
    Height = 25
    Caption = '+'
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 376
    Top = 352
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 6
    OnClick = BitBtn6Click
  end
  object CheckBox1: TCheckBox
    Left = 488
    Top = 80
    Width = 145
    Height = 17
    Caption = 'Otomatik Don Loo'
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object TrackBar1: TTrackBar
    Left = 456
    Top = 152
    Width = 281
    Height = 45
    Max = 200
    Min = 1
    Position = 1
    TabOrder = 8
    OnChange = TrackBar1Change
  end
  object BitBtn7: TBitBtn
    Left = 16
    Top = 416
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 88
    Top = 416
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 10
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 168
    Top = 416
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 11
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 232
    Top = 416
    Width = 49
    Height = 25
    Caption = '-'
    TabOrder = 12
    OnClick = BitBtn10Click
  end
  object BitBtn11: TBitBtn
    Left = 312
    Top = 416
    Width = 41
    Height = 25
    Caption = '+'
    TabOrder = 13
    OnClick = BitBtn11Click
  end
  object BitBtn12: TBitBtn
    Left = 384
    Top = 416
    Width = 41
    Height = 25
    Caption = '-'
    TabOrder = 14
    OnClick = BitBtn12Click
  end
  object BitBtn13: TBitBtn
    Left = 472
    Top = 296
    Width = 75
    Height = 25
    Caption = 'XYZ + '
    TabOrder = 15
    OnClick = BitBtn13Click
  end
  object BitBtn14: TBitBtn
    Left = 568
    Top = 296
    Width = 75
    Height = 25
    Caption = 'XYZ - '
    TabOrder = 16
    OnClick = BitBtn14Click
  end
  object GLScene1: TGLScene
    Left = 528
    Top = 16
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000704100002041000020C10000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLDummyCube1: TGLDummyCube
      ShowAxes = True
      CubeSize = 1.000000000000000000
      object GLCone1: TGLCone
        Material.BackProperties.Ambient.Color = {E1E0E03E9493133FDCDB5B3F0000803F}
        Material.BackProperties.Diffuse.Color = {8584843EDFDEDE3E8584843E0000803F}
        Material.BackProperties.Emission.Color = {8D8C0C3FB9B8B83DB9B8B83D0000803F}
        Material.BackProperties.Specular.Color = {8F8E0E3FD7D6D63E8D8C0C3E0000803F}
        Material.FrontProperties.Ambient.Color = {FBFAFA3E0000803FE5E4643E0000803F}
        Material.FrontProperties.Diffuse.Color = {C7C6463FDBDADA3ECDCC4C3F0000803F}
        Material.FrontProperties.Emission.Color = {ABAA2A3F00000000000000000000803F}
        ShowAxes = True
        BottomRadius = 0.500000000000000000
        Height = 1.000000000000000000
      end
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 100.000000000000000000
      TargetObject = GLDummyCube1
      Position.Coordinates = {000020410000A040000000000000803F}
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 408
    Top = 16
  end
end
