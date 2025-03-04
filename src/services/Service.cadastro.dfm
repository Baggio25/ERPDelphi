object ServiceCadastro: TServiceCadastro
  Height = 237
  Width = 333
  object FDQueryPessoas: TFDQuery
    Connection = ServiceConexao.FDConnection
    SQL.Strings = (
      'SELECT * FROM PESSOAS WHERE PES_CODIGO = :CODIGO ')
    Left = 48
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryPessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryPessoasPES_NOME_RAZAO: TStringField
      FieldName = 'PES_NOME_RAZAO'
      Origin = 'PES_NOME_RAZAO'
      Required = True
      Size = 100
    end
    object FDQueryPessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object FDQueryPessoasPES_CPF_CPNJ: TStringField
      FieldName = 'PES_CPF_CPNJ'
      Origin = 'PES_CPF_CPNJ'
    end
    object FDQueryPessoasPES_RG_IE: TStringField
      FieldName = 'PES_RG_IE'
      Origin = 'PES_RG_IE'
    end
    object FDQueryPessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 12
    end
    object FDQueryPessoasPES_CELULAR: TStringField
      FieldName = 'PES_CELULAR'
      Origin = 'PES_CELULAR'
      Size = 12
    end
    object FDQueryPessoasPES_WHATSAPP: TStringField
      FieldName = 'PES_WHATSAPP'
      Origin = 'PES_WHATSAPP'
      Size = 12
    end
    object FDQueryPessoasPES_TIPO: TIntegerField
      FieldName = 'PES_TIPO'
      Origin = 'PES_TIPO'
    end
    object FDQueryPessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 255
    end
    object FDQueryPessoasEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
    end
    object FDQueryPessoasPES_END_COMPLEMENTO: TStringField
      FieldName = 'PES_END_COMPLEMENTO'
      Origin = 'PES_END_COMPLEMENTO'
      Size = 255
    end
  end
  object FDQueryEnderecos: TFDQuery
    Connection = ServiceConexao.FDConnection
    SQL.Strings = (
      'SELECT * FROM ENDERECOS WHERE END_CODIGO = :CODIGO')
    Left = 152
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryEnderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEnderecosEND_RUA: TStringField
      FieldName = 'END_RUA'
      Origin = 'END_RUA'
      Required = True
      Size = 255
    end
    object FDQueryEnderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Required = True
      Size = 255
    end
    object FDQueryEnderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
      Required = True
      Size = 50
    end
    object FDQueryEnderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
      Size = 10
    end
    object FDQueryEnderecosCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
      Required = True
    end
  end
end
