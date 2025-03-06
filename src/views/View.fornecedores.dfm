inherited ViewFornecedores: TViewFornecedores
  Caption = ''
  ClientWidth = 1024
  Position = poScreenCenter
  Visible = False
  ExplicitWidth = 1024
  TextHeight = 21
  inherited pnlTopo: TPanel
    Width = 1024
    ExplicitWidth = 1024
    inherited lblTitulo: TLabel
      Width = 955
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
    inherited pnlFechar: TPanel
      Left = 968
      ExplicitLeft = 968
    end
  end
  inherited pnlRodape: TPanel
    Width = 1024
    ExplicitWidth = 1024
    inherited btnNovo: TPanel
      Left = 524
      ExplicitLeft = 524
    end
    inherited btnEditar: TPanel
      Left = 624
      ExplicitLeft = 624
    end
    inherited btnCancelar: TPanel
      Left = 724
      ExplicitLeft = 724
    end
    inherited btnSalvar: TPanel
      Left = 824
      ExplicitLeft = 824
    end
    inherited btnExcluir: TPanel
      Left = 924
      ExplicitLeft = 924
    end
  end
  inherited pnlLinhaFundo: TPanel
    Width = 1024
    ExplicitWidth = 1024
    inherited cpnLista: TCardPanel
      Width = 1018
      ExplicitWidth = 1018
      inherited crdPesquisa: TCard
        Width = 1018
        ExplicitWidth = 1018
        inherited pnlPesquisa: TPanel
          Width = 1018
          ExplicitWidth = 1018
        end
        inherited dbgDados: TDBGrid
          Width = 1008
          DataSource = dsDados
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Alignment = taRightJustify
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_NOME_RAZAO'
              Title.Caption = 'Nome / Raz'#227'o Social'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_FANTASIA'
              Title.Caption = 'Nome Fantasia'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RG_IE'
              Title.Caption = 'RG / Insc. Estadual'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CELULAR'
              Title.Caption = 'Celular'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_WHATSAPP'
              Title.Caption = 'WhatsApp'
              Width = 90
              Visible = True
            end>
        end
      end
      inherited crdCadastro: TCard
        Width = 1018
        ExplicitWidth = 1018
        inherited pnlCadastro: TPanel
          Width = 1018
          ExplicitWidth = 1018
        end
      end
    end
  end
  inherited dsDados: TDataSource
    AutoEdit = False
    DataSet = ServiceCadastro.FDQueryPessoas
    Left = 816
    Top = 56
  end
end
