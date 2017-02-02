object Form1: TForm1
  Left = 417
  Top = 225
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Chatter'
  ClientHeight = 279
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 263
    Top = 40
    Width = 103
    Height = 13
    Caption = 'Bilgisayar'#305' a'#231#305'k olanlar'
  end
  object Label3: TLabel
    Left = 263
    Top = 192
    Width = 40
    Height = 13
    Caption = 'Durum...'
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 54
    Height = 13
    Caption = 'G'#246'nderilen:'
  end
  object Edit2: TEdit
    Left = 16
    Top = 208
    Width = 233
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 263
    Top = 208
    Width = 75
    Height = 25
    Caption = 'G'#246'nder'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 17
    Top = 40
    Width = 232
    Height = 161
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button2: TButton
    Left = 311
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Ara'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 263
    Top = 56
    Width = 153
    Height = 113
    ItemHeight = 13
    TabOrder = 4
    OnClick = ListBox1Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 40
    Top = 240
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 80
    Top = 240
  end
  object iptarama: TIdIcmpClient
    OnReply = iptaramaReply
    Left = 128
    Top = 240
  end
end
