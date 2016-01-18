object frmMasterPesquisa: TfrmMasterPesquisa
  Left = 0
  Top = 0
  Margins.Left = 1
  Margins.Top = 1
  Margins.Right = 1
  Margins.Bottom = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  BorderWidth = 3
  Caption = 'Pesquisa'
  ClientHeight = 688
  ClientWidth = 811
  Color = clWindow
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
    Top = 45
    Width = 811
    Height = 643
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 817
    ExplicitHeight = 716
    object pnlPesquisa: TPanel
      Left = 1
      Top = 1
      Width = 809
      Height = 75
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -5
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
      Top = 76
      Width = 809
      Height = 478
      Align = alTop
      DataSource = dsPesquisa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grdPesquisaDblClick
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 606
      Width = 809
      Height = 36
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 679
      ExplicitWidth = 815
      object btnCancelar: TButton
        Left = 733
        Top = 1
        Width = 75
        Height = 34
        Action = acCancelar
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 739
      end
      object btnConfirmar: TButton
        Left = 658
        Top = 1
        Width = 75
        Height = 34
        Action = acConfirmar
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 664
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 45
    Align = alTop
    BevelKind = bkTile
    BorderStyle = bsSingle
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 797
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 801
      Height = 35
      Align = alClient
      Caption = 'T'#237'tulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 78
      ExplicitHeight = 33
    end
  end
  object qryPesquisa: TFDQuery
    Left = 592
    Top = 48
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 640
    Top = 48
  end
  object acList: TActionList
    Left = 528
    Top = 40
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
