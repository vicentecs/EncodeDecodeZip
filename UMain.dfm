object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Encode/Decode Base64/Zip'
  ClientHeight = 656
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    831
    656)
  PixelsPerInch = 96
  TextHeight = 13
  object XML: TLabel
    Left = 8
    Top = 21
    Width = 19
    Height = 13
    Caption = 'XML'
  end
  object Label1: TLabel
    Left = 8
    Top = 341
    Width = 35
    Height = 13
    Caption = 'Base64'
  end
  object btnOpen: TButton
    Left = 33
    Top = 9
    Width = 101
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Open File'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object btnEncodeBase: TButton
    Left = 508
    Top = 9
    Width = 101
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Encode Base64'
    TabOrder = 1
    OnClick = btnEncodeBaseClick
  end
  object btnEncode: TButton
    Left = 615
    Top = 9
    Width = 101
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Encode/Zip'
    TabOrder = 2
    OnClick = btnEncodeClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 815
    Height = 283
    Anchors = [akLeft, akTop, akRight]
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnDecodeBase: TButton
    Left = 508
    Top = 329
    Width = 101
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Decode Base64'
    TabOrder = 4
    OnClick = btnDecodeBaseClick
  end
  object btnDecode: TButton
    Left = 615
    Top = 329
    Width = 101
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Decode/UnZip'
    TabOrder = 5
    OnClick = btnDecodeClick
  end
  object Memo2: TMemo
    Left = 8
    Top = 360
    Width = 815
    Height = 282
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object OpenDialog1: TOpenDialog
    Left = 344
  end
end
