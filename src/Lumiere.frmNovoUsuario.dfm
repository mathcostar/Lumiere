object frmNovoUsuario: TfrmNovoUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 5
  Caption = 'Cadastro de Usu'#225'rio (Professor)'
  ClientHeight = 206
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblNome: TLabel
    Left = 64
    Top = 16
    Width = 46
    Height = 21
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 68
    Top = 64
    Width = 42
    Height = 21
    Caption = 'Login:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 64
    Top = 112
    Width = 46
    Height = 21
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 128
    Top = 18
    Width = 225
    Height = 23
    TabOrder = 0
    TextHint = 'Informe o nome...'
  end
  object edtLogin: TEdit
    Left = 128
    Top = 66
    Width = 225
    Height = 23
    TabOrder = 1
    TextHint = 'Informe o login...'
  end
  object edtSenha: TEdit
    Left = 128
    Top = 114
    Width = 225
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
    TextHint = 'Informe uma senha...'
  end
  object chkMostrarSenha: TCheckBox
    Left = 256
    Top = 143
    Width = 97
    Height = 17
    Caption = 'Motrar senha'
    TabOrder = 3
    OnClick = chkMostrarSenhaClick
  end
  object btnGravar: TButton
    Left = 360
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 256
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
end
