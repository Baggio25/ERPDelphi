inherited ViewBaseListas: TViewBaseListas
  Cursor = crHandPoint
  Caption = 'ViewBaseListas'
  Color = clWhite
  Position = poMainFormCenter
  OnMouseDown = FormMouseDown
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 571
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
      Left = 584
      Top = 0
      Width = 56
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      OnClick = pnlFecharClick
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
    Top = 445
    Width = 640
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 8
  end
end
