inherited ViewClientes: TViewClientes
  Caption = ''
  Position = poScreenCenter
  Visible = False
  TextHeight = 21
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited cpnLista: TCardPanel
      inherited crdPesquisa: TCard
        inherited dbgDados: TDBGrid
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI Semilight'
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_NOME_RAZAO'
              Title.Caption = 'Nome / Raz'#227'o'
              Width = 274
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_FANTASIA'
              Title.Caption = 'Nome Fantasia'
              Width = 214
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CPF_CPNJ'
              Title.Caption = 'CPF / CNPJ'
              Width = 117
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.FDQueryPessoas
  end
end
