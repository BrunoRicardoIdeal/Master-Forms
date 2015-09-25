object frmMasterPesquisa: TfrmMasterPesquisa
  Left = 0
  Top = 0
  Margins.Left = 1
  Margins.Top = 1
  Margins.Right = 1
  Margins.Bottom = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  BorderWidth = 3
  Caption = 'Pesquisa'
  ClientHeight = 716
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 716
    Align = alClient
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 815
      Height = 37
      Align = alTop
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 352
        Top = 8
        Width = 84
        Height = 23
        Caption = 'Pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnFechar: TButton
        Left = 739
        Top = 1
        Width = 75
        Height = 35
        Action = acCancelar
        Align = alRight
        Caption = 'Fechar'
        TabOrder = 0
        TabStop = False
      end
    end
    object pnlPesquisa: TPanel
      Left = 1
      Top = 38
      Width = 815
      Height = 75
      Align = alTop
      TabOrder = 1
      object lblPesquisa: TLabel
        Left = 0
        Top = 6
        Width = 49
        Height = 13
        Caption = 'Pesquisa :'
      end
      object btnPesquisar: TButton
        Left = 656
        Top = 49
        Width = 75
        Height = 25
        Action = acPesquisar
        TabOrder = 0
      end
      object btnLimpar: TButton
        Left = 733
        Top = 49
        Width = 75
        Height = 25
        Action = acLimpar
        TabOrder = 1
      end
    end
    object grdPesquisa: TDBGrid
      Left = 1
      Top = 113
      Width = 815
      Height = 478
      Align = alTop
      DataSource = dsPesquisa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grdPesquisaDblClick
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 679
      Width = 815
      Height = 36
      Align = alBottom
      TabOrder = 3
      object btnCancelar: TButton
        Left = 739
        Top = 1
        Width = 75
        Height = 34
        Action = acCancelar
        Align = alRight
        TabOrder = 0
      end
      object btnConfirmar: TButton
        Left = 664
        Top = 1
        Width = 75
        Height = 34
        Action = acConfirmar
        Align = alRight
        TabOrder = 1
      end
    end
  end
  object qryPesquisa: TFDQuery
    Connection = dmLogin.SqlConn
    Left = 592
    Top = 48
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 640
    Top = 48
  end
  object acList: TActionList
    Left = 504
    Top = 56
    object acCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = acCancelarExecute
    end
    object acConfirmar: TAction
      Caption = 'Confirmar'
      OnExecute = acConfirmarExecute
    end
    object acLimpar: TAction
      Caption = 'Limpar'
      OnExecute = acLimparExecute
    end
    object acPesquisar: TAction
      Caption = 'Pesquisar'
    end
  end
end
