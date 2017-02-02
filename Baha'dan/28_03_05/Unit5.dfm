object araForm: TaraForm
  Left = 158
  Top = 248
  BorderStyle = bsSingle
  Caption = 'Kay'#305't Arama'
  ClientHeight = 341
  ClientWidth = 778
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 2
    Width = 213
    Height = 55
    Caption = 'Aranacak Kay'#305't '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object araEdit: TLabeledEdit
      Left = 52
      Top = 24
      Width = 141
      Height = 24
      EditLabel.Width = 43
      EditLabel.Height = 16
      EditLabel.Caption = #214#287'r.No'
      LabelPosition = lpLeft
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 16
    Width = 91
    Height = 32
    Caption = 'Ara'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object liste: TStringGrid
    Left = 4
    Top = 61
    Width = 771
    Height = 276
    ColCount = 9
    DefaultColWidth = 95
    RowCount = 2
    TabOrder = 2
  end
end
