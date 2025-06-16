object dmPostgres: TdmPostgres
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
    Left = 248
    Top = 272
  end
  object fdDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 248
    Top = 336
  end
  object tbProfessores: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = fdConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    SchemaName = 'public'
    TableName = 'professores'
    Left = 160
    Top = 216
  end
  object dsProfessores: TDataSource
    DataSet = tbProfessores
    Left = 160
    Top = 152
  end
  object fdqLogin: TFDQuery
    MasterSource = dsProfessores
    Connection = fdConexao
    SQL.Strings = (
      'SELECT 1 FROM professores '
      'WHERE usuario = :usuario AND senha = :senha;')
    Left = 504
    Top = 344
    ParamData = <
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        Name = 'SENHA'
        ParamType = ptInput
      end>
  end
end
