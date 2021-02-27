object FFrmJogoDaVelha: TFFrmJogoDaVelha
  Left = 0
  Top = 0
  Caption = 'Jogo da velha'
  ClientHeight = 509
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pbAll: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 509
    Align = alClient
    TabOrder = 0
    object pnData: TPanel
      Left = 492
      Top = 1
      Width = 184
      Height = 507
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 498
      object btnIniciarJogo: TButton
        Left = 32
        Top = 393
        Width = 121
        Height = 25
        Caption = 'Iniciar jogo'
        TabOrder = 0
        OnClick = btnIniciarJogoClick
      end
      object edtJogadorX: TLabeledEdit
        Left = 32
        Top = 293
        Width = 121
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Jogador X'
        TabOrder = 1
      end
      object edtJogadorO: TLabeledEdit
        Left = 32
        Top = 336
        Width = 121
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'Jogador O'
        TabOrder = 2
      end
    end
    object pnButtons: TPanel
      Left = 1
      Top = 1
      Width = 491
      Height = 507
      Align = alClient
      Enabled = False
      TabOrder = 1
      object btn11: TButton
        Left = 15
        Top = 12
        Width = 140
        Height = 140
        TabOrder = 0
        OnClick = btn11Click
      end
      object btn12: TButton
        Left = 176
        Top = 12
        Width = 140
        Height = 140
        TabOrder = 1
        OnClick = btn11Click
      end
      object btn13: TButton
        Left = 336
        Top = 12
        Width = 140
        Height = 140
        TabOrder = 2
        OnClick = btn11Click
      end
      object btn21: TButton
        Left = 15
        Top = 174
        Width = 140
        Height = 139
        TabOrder = 3
        OnClick = btn11Click
      end
      object btn22: TButton
        Left = 176
        Top = 174
        Width = 140
        Height = 140
        TabOrder = 4
        OnClick = btn11Click
      end
      object btn23: TButton
        Left = 336
        Top = 174
        Width = 140
        Height = 140
        TabOrder = 5
        OnClick = btn11Click
      end
      object btn31: TButton
        Left = 15
        Top = 336
        Width = 140
        Height = 140
        TabOrder = 6
        OnClick = btn11Click
      end
      object btn33: TButton
        Left = 336
        Top = 336
        Width = 140
        Height = 140
        TabOrder = 7
        OnClick = btn11Click
      end
      object btn32: TButton
        Left = 176
        Top = 336
        Width = 140
        Height = 140
        TabOrder = 8
        OnClick = btn11Click
      end
    end
  end
end
