object dmConexao: TdmConexao
  Height = 284
  Width = 356
  object fdConexao: TFDConnection
    Params.Strings = (
      'Server='
      'Port='
      'DriverID=PG')
    LoginPrompt = False
    Left = 160
    Top = 136
  end
  object fdDriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 160
    Top = 200
  end
  object tbProfessores: TFDTable
    IndexFieldNames = 'id'
    Connection = fdConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    Left = 72
    Top = 80
    object tbProfessoresid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbProfessoresnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object tbProfessoresusuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 50
    end
    object tbProfessoressenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 255
    end
  end
  object dsProfessores: TDataSource
    DataSet = tbProfessores
    Left = 72
    Top = 24
  end
  object tbAlunos: TFDTable
    IndexFieldNames = 'nome'
    Connection = fdConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    Left = 224
    Top = 80
    object tbAlunosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbAlunosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object tbAlunosprofessor_id: TIntegerField
      FieldName = 'professor_id'
    end
    object tbAlunosnome_professor: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_professor'
      LookupDataSet = tbProfessores
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'professor_id'
      Lookup = True
    end
  end
  object dsAlunos: TDataSource
    DataSet = tbAlunos
    Left = 224
    Top = 22
  end
end
