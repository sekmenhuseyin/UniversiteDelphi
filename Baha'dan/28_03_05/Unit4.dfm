object silForm: TsilForm
  Left = 298
  Top = 225
  BorderStyle = bsSingle
  Caption = 'Kay'#305't Silme Formu'
  ClientHeight = 64
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object silEdit: TLabeledEdit
    Left = 16
    Top = 32
    Width = 169
    Height = 21
    EditLabel.Width = 170
    EditLabel.Height = 24
    EditLabel.Caption = #214#287'renci Numaras'#305
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -19
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 24
    Width = 105
    Height = 33
    Caption = 'Sil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
end
