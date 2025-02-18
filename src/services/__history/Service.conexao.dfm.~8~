object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 179
  Width = 282
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
    LoginPrompt = False
    Left = 168
    Top = 16
  end
  object Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 16
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 168
    Top = 96
  end
end
