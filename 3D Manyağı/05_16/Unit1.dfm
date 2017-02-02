object Form1: TForm1
  Left = 214
  Top = 240
  Width = 807
  Height = 604
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
  object GLSceneViewer1: TGLSceneViewer
    Left = -8
    Top = -8
    Width = 513
    Height = 249
    Camera = GLCamera1
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 782
    Height = 672
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 72
      Top = 84
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label2: TLabel
      Left = 240
      Top = 84
      Width = 7
      Height = 13
      Caption = 'Y'
    end
    object Label3: TLabel
      Left = 410
      Top = 84
      Width = 7
      Height = 13
      Caption = 'Z'
    end
    object SpeedButton1: TSpeedButton
      Left = 568
      Top = 136
      Width = 129
      Height = 41
      Caption = '3DS Object Yukle!'
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 48
      Width = 49
      Height = 25
      Caption = '+'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 48
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 192
      Top = 48
      Width = 49
      Height = 25
      Caption = '+'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 424
      Top = 48
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 360
      Top = 48
      Width = 49
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 256
      Top = 48
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 24
      Top = 112
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 88
      Top = 112
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 200
      Top = 112
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 248
      Top = 112
      Width = 49
      Height = 25
      Caption = '-'
      TabOrder = 9
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 360
      Top = 112
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 10
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 432
      Top = 112
      Width = 41
      Height = 25
      Caption = '-'
      TabOrder = 11
      OnClick = BitBtn12Click
    end
    object BitBtn13: TBitBtn
      Left = 520
      Top = 64
      Width = 75
      Height = 25
      Caption = 'XYZ + '
      TabOrder = 12
      OnClick = BitBtn13Click
    end
    object BitBtn14: TBitBtn
      Left = 616
      Top = 64
      Width = 75
      Height = 25
      Caption = 'XYZ - '
      TabOrder = 13
      OnClick = BitBtn14Click
    end
    object BitBtn15: TBitBtn
      Left = 32
      Top = 184
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 14
      OnClick = BitBtn15Click
    end
    object BitBtn16: TBitBtn
      Left = 96
      Top = 184
      Width = 33
      Height = 25
      Caption = '-'
      TabOrder = 15
      OnClick = BitBtn16Click
    end
    object BitBtn17: TBitBtn
      Left = 200
      Top = 184
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 16
      OnClick = BitBtn17Click
    end
    object BitBtn18: TBitBtn
      Left = 264
      Top = 184
      Width = 41
      Height = 25
      Caption = '-'
      TabOrder = 17
      OnClick = BitBtn18Click
    end
    object BitBtn19: TBitBtn
      Left = 360
      Top = 184
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 18
      OnClick = BitBtn19Click
    end
    object BitBtn20: TBitBtn
      Left = 432
      Top = 184
      Width = 41
      Height = 25
      Caption = '-'
      TabOrder = 19
      OnClick = BitBtn20Click
    end
  end
  object GLScene1: TGLScene
    Left = 352
    Top = 16
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000704100002041000020C10000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLDummyCube1: TGLDummyCube
      CubeSize = 1.000000000000000000
      object GLCone1: TGLCone
        Material.BackProperties.Ambient.Color = {E1E0E03E9493133FDCDB5B3F0000803F}
        Material.BackProperties.Diffuse.Color = {8584843EDFDEDE3E8584843E0000803F}
        Material.BackProperties.Emission.Color = {8D8C0C3FB9B8B83DB9B8B83D0000803F}
        Material.BackProperties.Specular.Color = {8F8E0E3FD7D6D63E8D8C0C3E0000803F}
        Material.FrontProperties.Ambient.Color = {FBFAFA3E0000803FE5E4643E0000803F}
        Material.FrontProperties.Diffuse.Color = {C7C6463FDBDADA3ECDCC4C3F0000803F}
        Material.FrontProperties.Emission.Color = {ABAA2A3F00000000000000000000803F}
        BottomRadius = 0.500000000000000000
        Height = 1.000000000000000000
      end
    end
    object GLDummyCube2: TGLDummyCube
      ShowAxes = True
      CubeSize = 1.000000000000000000
      object FreeForm: TGLFreeForm
      end
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 100.000000000000000000
      TargetObject = GLDummyCube2
      Position.Coordinates = {000020410000A040000000000000803F}
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 312
    Top = 16
  end
  object OpenDialog1: TOpenDialog
    Filter = '3DS Dosyalar|*.3ds'
    Title = '3DS dosya Ac'
    Left = 424
    Top = 193
  end
end
