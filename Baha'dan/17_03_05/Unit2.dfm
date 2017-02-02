object Form1: TForm1
  Left = 349
  Top = 116
  Width = 636
  Height = 450
  Caption = 'StringGrid Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 6
    Top = 3
    Width = 187
    Height = 83
    Caption = 'Grid Bilgileri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 39
      Height = 20
      Caption = 'Sat'#253'r'
    end
    object Label2: TLabel
      Left = 11
      Top = 50
      Width = 49
      Height = 20
      Caption = 'S'#252'tun'
    end
    object Edit1: TEdit
      Left = 80
      Top = 19
      Width = 97
      Height = 28
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 81
      Top = 49
      Width = 97
      Height = 28
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 6
    Top = 92
    Width = 181
    Height = 39
    Caption = 'Grid '#199'iz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = BitBtn1Click
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 144
    Width = 187
    Height = 115
    Caption = 'H'#252'cre Verisi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 39
      Height = 20
      Caption = 'Sat'#253'r'
    end
    object Label4: TLabel
      Left = 11
      Top = 50
      Width = 49
      Height = 20
      Caption = 'S'#252'tun'
    end
    object Label5: TLabel
      Left = 11
      Top = 80
      Width = 50
      Height = 20
      Caption = 'De'#240'er'
    end
    object Edit3: TEdit
      Left = 81
      Top = 19
      Width = 97
      Height = 28
      ReadOnly = True
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 81
      Top = 49
      Width = 97
      Height = 28
      ReadOnly = True
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 81
      Top = 80
      Width = 97
      Height = 28
      TabOrder = 2
    end
  end
  object BitBtn2: TBitBtn
    Left = 7
    Top = 266
    Width = 181
    Height = 25
    Caption = 'Veri Aktar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    WordWrap = True
    OnClick = BitBtn2Click
  end
  object sg1: TStringGrid
    Left = 196
    Top = 8
    Width = 426
    Height = 404
    ColCount = 1
    DefaultColWidth = 80
    DefaultRowHeight = 35
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = sg1Click
    OnDblClick = sg1DblClick
  end
  object BitBtn3: TBitBtn
    Left = 7
    Top = 386
    Width = 181
    Height = 25
    Caption = '&Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 7
    Top = 296
    Width = 181
    Height = 25
    Caption = '2x2 Determinat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    WordWrap = True
  end
  object BitBtn5: TBitBtn
    Left = 8
    Top = 327
    Width = 181
    Height = 25
    Caption = '2x2 Tersi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    WordWrap = True
  end
  object BitBtn6: TBitBtn
    Left = 7
    Top = 357
    Width = 181
    Height = 25
    Caption = '2x2 Traspozu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
    WordWrap = True
  end
end
