object dmPostgre: TdmPostgre
  Height = 403
  Width = 576
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 272
  end
  object fdDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 56
    Top = 336
  end
  object dsPostgres: TDataSource
    Left = 56
    Top = 216
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 152
  end
end
