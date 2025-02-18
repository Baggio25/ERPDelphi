object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 249
  Width = 310
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\rodri\Documents\Estudo\Bancos\ERPDelphi\DADOS.' +
        'FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 88
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 16
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 48
    Top = 160
  end
  object FDQueryFiliais: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM FILIAIS WHERE FIL_CODIGO = :CODIGO')
    Left = 216
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryFiliaisFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFiliaisFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Required = True
      Size = 100
    end
    object FDQueryFiliaisFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Required = True
      Size = 100
    end
    object FDQueryFiliaisFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Required = True
    end
    object FDQueryFiliaisFIL_IE: TStringField
      FieldName = 'FIL_IE'
      Origin = 'FIL_IE'
    end
    object FDQueryFiliaisFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 12
    end
    object FDQueryFiliaisFIL_WHATSAPP: TStringField
      FieldName = 'FIL_WHATSAPP'
      Origin = 'FIL_WHATSAPP'
      Size = 12
    end
    object FDQueryFiliaisFIL_CELULAR: TStringField
      FieldName = 'FIL_CELULAR'
      Origin = 'FIL_CELULAR'
      Size = 12
    end
    object FDQueryFiliaisEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
    end
    object FDQueryFiliaisFIL_END_COMPLEMENTO: TStringField
      FieldName = 'FIL_END_COMPLEMENTO'
      Origin = 'FIL_END_COMPLEMENTO'
      Size = 255
    end
  end
end
