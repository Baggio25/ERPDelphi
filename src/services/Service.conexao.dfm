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
  end
end
