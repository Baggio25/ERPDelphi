inherited ViewBaseListas: TViewBaseListas
  Cursor = crHandPoint
  Caption = 'ViewBaseListas'
  ClientHeight = 492
  ClientWidth = 733
  Color = clWhite
  Font.Height = -16
  Position = poMainFormCenter
  OnMouseDown = FormMouseDown
  OnShow = FormShow
  ExplicitWidth = 733
  ExplicitHeight = 492
  TextHeight = 21
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 733
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 640
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 664
      Height = 29
      Margins.Left = 10
      Align = alClient
      Caption = 'lblTitulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 3
      ExplicitWidth = 70
      ExplicitHeight = 25
    end
    object pnlFechar: TPanel
      Left = 677
      Top = 0
      Width = 56
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      OnClick = pnlFecharClick
      ExplicitLeft = 584
      object btnSair: TPanel
        Left = 0
        Top = 0
        Width = 56
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        BevelOuter = bvNone
        Color = 4605510
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 210
        ExplicitHeight = 41
        object lblBtnSair: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 9
          Width = 50
          Height = 26
          Cursor = crHandPoint
          Margins.Top = 9
          Margins.Bottom = 0
          Align = alClient
          Alignment = taCenter
          Caption = 'SAIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 419583
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 12
          ExplicitWidth = 28
          ExplicitHeight = 17
        end
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 452
    Width = 733
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 201
      Top = 3
      Width = 101
      Height = 34
      Align = alRight
      GroupIndex = 1
      Caption = 'Novo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 157
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 308
      Top = 3
      Width = 101
      Height = 34
      Align = alRight
      GroupIndex = 1
      Caption = 'Editar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 632
      ExplicitTop = 0
      ExplicitHeight = 35
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 415
      Top = 3
      Width = 101
      Height = 34
      Align = alRight
      GroupIndex = 1
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 632
      ExplicitTop = 0
      ExplicitHeight = 35
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 522
      Top = 3
      Width = 101
      Height = 34
      Align = alRight
      GroupIndex = 1
      Caption = 'Salvar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 632
      ExplicitTop = 0
      ExplicitHeight = 35
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 629
      Top = 3
      Width = 101
      Height = 34
      Align = alRight
      GroupIndex = 1
      Caption = 'Excluir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 632
      ExplicitTop = 0
      ExplicitHeight = 35
    end
  end
  object pnlLinhaFundo: TPanel
    Left = 0
    Top = 35
    Width = 733
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 272
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object cpnLista: TCardPanel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 727
      Height = 417
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = crdPesquisa
      BevelOuter = bvNone
      Caption = 'cpnLista'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 216
      ExplicitTop = 144
      ExplicitWidth = 300
      ExplicitHeight = 200
      object crdPesquisa: TCard
        Left = 0
        Top = 0
        Width = 727
        Height = 417
        Caption = 'Pesquisa'
        CardIndex = 0
        TabOrder = 0
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 727
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 0
          object lblTituloPequisa: TLabel
            Left = 48
            Top = 16
            Width = 80
            Height = 30
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 48
            Top = 52
            Width = 313
            Height = 27
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui sua pesquisa'
          end
        end
        object dbgDados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 105
          Width = 717
          Height = 307
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object crdCadastro: TCard
        Left = 0
        Top = 0
        Width = 727
        Height = 417
        Caption = 'Cadastro'
        CardIndex = 1
        TabOrder = 1
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
  object dsDados: TDataSource
    Left = 560
    Top = 200
  end
end
