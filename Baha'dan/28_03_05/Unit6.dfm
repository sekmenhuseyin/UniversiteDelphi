object rapForm1: TrapForm1
  Left = 214
  Top = 116
  BorderStyle = bsSingle
  Caption = 'Ba'#351'ar'#305'l'#305' '#214#287'renci Grafi'#287'i'
  ClientHeight = 341
  ClientWidth = 536
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
    Left = 16
    Top = 8
    Width = 497
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ortalamas'#305' 60 ve '#220'zeri Olan '#214#287'renci Y'#252'zde Grafi'#287'i'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object sekil: TGauge
    Left = 143
    Top = 74
    Width = 265
    Height = 249
    BorderStyle = bsNone
    ForeColor = clNavy
    Kind = gkPie
    Progress = 0
  end
  object Label2: TLabel
    Left = 24
    Top = 273
    Width = 36
    Height = 20
    Alignment = taCenter
    Caption = '0 / 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
