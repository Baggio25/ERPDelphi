inherited ViewClientes: TViewClientes
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
      Caption = 'Clientes'
      ExplicitWidth = 68
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
      ActiveCard = crdCadastro
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
          Font.Name = 'Segoe UI'
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Name = 'Segoe UI '
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Alignment = taRightJustify
              Title.Caption = 'C'#243'digo'
              Width = 66
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
              Width = 262
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CPF_CPNJ'
              Title.Caption = 'CPF / CNPJ'
              Width = 117
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
        object Label1: TLabel [0]
          Left = 73
          Top = 88
          Width = 50
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = fldPesCodigo
        end
        object Label2: TLabel [1]
          Left = 73
          Top = 143
          Width = 144
          Height = 21
          Caption = 'Nome / Raz'#227'o Social'
          FocusControl = fldPesNomeRazao
        end
        object Label3: TLabel [2]
          Left = 74
          Top = 198
          Width = 103
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = fldPesFantasia
        end
        object Label4: TLabel [3]
          Left = 360
          Top = 253
          Width = 127
          Height = 21
          Caption = 'RG / Insc. Estadual'
          FocusControl = fldPesRgIe
        end
        object Label5: TLabel [4]
          Left = 74
          Top = 307
          Width = 57
          Height = 21
          Caption = 'Telefone'
          FocusControl = fldPesFone
        end
        object Label6: TLabel [5]
          Left = 252
          Top = 307
          Width = 49
          Height = 21
          Caption = 'Celular'
          FocusControl = fldPesCel
        end
        object Label7: TLabel [6]
          Left = 430
          Top = 307
          Width = 72
          Height = 21
          Caption = 'WhatsApp'
          FocusControl = fldPesWhats
        end
        object Label8: TLabel [7]
          Left = 74
          Top = 360
          Width = 82
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = fldPesObs
        end
        object Label9: TLabel [8]
          Left = 74
          Top = 253
          Width = 77
          Height = 21
          Caption = 'CPF / CNPJ'
          FocusControl = fldPesCpfCnpj
        end
        inherited pnlCadastro: TPanel
          Width = 1018
          TabOrder = 9
          ExplicitWidth = 1018
          inherited lblTituloCadastro: TLabel
            Width = 190
            Caption = 'Cadastro de Clientes'
            ExplicitWidth = 190
          end
        end
        object fldPesCodigo: TDBEdit
          Left = 73
          Top = 110
          Width = 97
          Height = 27
          Ctl3D = False
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object fldPesNomeRazao: TDBEdit
          Left = 74
          Top = 165
          Width = 650
          Height = 27
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PES_NOME_RAZAO'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 1
        end
        object fldPesFantasia: TDBEdit
          Left = 74
          Top = 220
          Width = 650
          Height = 27
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 2
        end
        object fldPesRgIe: TDBEdit
          Left = 360
          Top = 274
          Width = 221
          Height = 27
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PES_RG_IE'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 4
        end
        object fldPesFone: TDBEdit
          Left = 74
          Top = 328
          Width = 172
          Height = 27
          Ctl3D = False
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 5
        end
        object fldPesCel: TDBEdit
          Left = 252
          Top = 328
          Width = 172
          Height = 27
          Ctl3D = False
          DataField = 'PES_CELULAR'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 6
        end
        object fldPesWhats: TDBEdit
          Left = 430
          Top = 328
          Width = 151
          Height = 27
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataField = 'PES_WHATSAPP'
          DataSource = dsDados
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 7
        end
        object fldPesObs: TDBEdit
          Left = 74
          Top = 382
          Width = 650
          Height = 27
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          ParentCtl3D = False
          TabOrder = 8
        end
        object fldPesCpfCnpj: TDBEdit
          Left = 74
          Top = 274
          Width = 280
          Height = 27
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataField = 'PES_CPF_CPNJ'
          DataSource = dsDados
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 3
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.FDQueryPessoas
    Left = 888
    Top = 48
  end
end
