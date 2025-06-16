program Lumiere;

uses
  Vcl.Forms,
  Lumiere.frmLogin in 'src\Lumiere.frmLogin.pas' {frmLogin},
  Lumiere.frmCadastroProfessores in 'src\Lumiere.frmCadastroProfessores.pas' {frmCadastroProfessores},
  DataModule in 'src\dm\DataModule.pas' {dmConexao: TDataModule},
  Lumiere.frmTelaPrincipal in 'src\Lumiere.frmTelaPrincipal.pas' {frmTelaPrincipal},
  Lumiere.frmNovoUsuario in 'src\Lumiere.frmNovoUsuario.pas' {frmNovoUsuario},
  Lumiere.frmCadastroAlunos in 'src\Lumiere.frmCadastroAlunos.pas' {frmCadastroAlunos},
  Lumiere.frmRelatorioAlunos in 'src\relatorios\Lumiere.frmRelatorioAlunos.pas' {frmRelatorioAlunos},
  Lumiere.frmLoginBanco in 'src\Lumiere.frmLoginBanco.pas' {frmLoginBanco},
  Lumiere.frmRelatorioProfessores in 'src\relatorios\Lumiere.frmRelatorioProfessores.pas' {frmRelatorioProfessores},
  Lumiere.frmNovoCadastroAlunos in 'src\Lumiere.frmNovoCadastroAlunos.pas' {frmNovoCadastroAlunos},
  Lumiere.frmNovoCadastroProfessores in 'src\Lumiere.frmNovoCadastroProfessores.pas' {frmNovoCadastroProfessores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoginBanco, frmLoginBanco);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.

