object FrmMasterCad: TFrmMasterCad
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 50
  BorderStyle = bsNone
  ClientHeight = 555
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisas: TPanel
    Left = 0
    Top = 35
    Width = 797
    Height = 82
    Align = alTop
    TabOrder = 0
    object lblPesquisar: TLabel
      Left = 1
      Top = 0
      Width = 50
      Height = 13
      Caption = 'Pesquisar:'
    end
  end
  object pnlResultados: TPanel
    Left = 0
    Top = 117
    Width = 797
    Height = 88
    Align = alTop
    TabOrder = 1
    object gridResultados: TDBGrid
      Left = 1
      Top = 1
      Width = 795
      Height = 86
      Align = alClient
      DataSource = dsMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 514
    Width = 797
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnNovo: TButton
      Left = 1
      Top = 1
      Width = 80
      Height = 39
      Action = actNovo
      Align = alLeft
      Caption = 'Novo [F5]'
      TabOrder = 0
      TabStop = False
    end
    object btnCancelar: TButton
      Left = 156
      Top = 1
      Width = 96
      Height = 39
      Action = actCancelar
      Align = alLeft
      Caption = 'Cancelar [ESC]'
      TabOrder = 1
      TabStop = False
    end
    object btnGravar: TBitBtn
      Left = 81
      Top = 1
      Width = 75
      Height = 39
      Action = actGravar
      Align = alLeft
      Caption = 'Gravar [F6]'
      TabOrder = 2
      TabStop = False
    end
    object btnExcluir: TButton
      Left = 252
      Top = 1
      Width = 80
      Height = 39
      Action = actExcluir
      Align = alLeft
      Caption = 'Excluir [F7]'
      TabOrder = 3
      TabStop = False
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 205
    Width = 797
    Height = 309
    Align = alClient
    TabOrder = 3
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 35
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 4
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 727
      Height = 33
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastro de ...'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 153
      ExplicitHeight = 25
    end
    object btnFechar: TSpeedButton
      Left = 728
      Top = 1
      Width = 68
      Height = 33
      Align = alRight
      Caption = 'Fechar'
      OnClick = btnFecharClick
      ExplicitLeft = 712
    end
  end
  object ActBase: TActionList
    Left = 584
    Top = 41
    object actNovo: TAction
      Caption = 'actNovo'
      ShortCut = 116
      OnExecute = actNovoExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
    object actGravar: TAction
      Caption = 'actGravar'
      ShortCut = 117
      OnExecute = actGravarExecute
    end
    object actExcluir: TAction
      Caption = 'actExcluir'
      ShortCut = 118
      OnExecute = actExcluirExecute
    end
    object actEdit: TAction
      Caption = 'actEdit'
      OnExecute = actEditExecute
    end
  end
  object qryMaster: TFDQuery
    AfterEdit = qryMasterAfterEdit
    Connection = dmLogin.SqlConn
    Left = 304
    Top = 59
  end
  object dsMaster: TDataSource
    DataSet = qryMaster
    Left = 392
    Top = 67
  end
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 488
    Top = 101
  end
end
