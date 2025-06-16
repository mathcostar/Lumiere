unit Lumiere.frmTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList;

type
  TfrmTelaPrincipal = class(TForm)
    pnlMenu: TPanel;
    sbtnCadastroAlunos: TSpeedButton;
    pnlGrupos: TPanel;
    lblCadastros: TLabel;
    lblSeparadorUm: TLabel;
    imgTelaInicial: TImage;
    lblNotas: TLabel;
    lblSeparadorDois: TLabel;
    lblOpcoes: TLabel;
    sbtnSair: TSpeedButton;
    sbtnFazerLogoff: TSpeedButton;
    pnlRodapeTelaInicial: TPanel;
    sbtnCadastroProfessores: TSpeedButton;
    sbtnRelatorioNotas: TSpeedButton;
    sbtnRelatorioAlunos: TSpeedButton;
    sbtnRelatorioProfessores: TSpeedButton;
    imglTelaPrincipal: TImageList;
    tmrMensagemBoasVindas: TTimer;
    lblMensagemBoasVindas: TLabel;
    procedure sbtnSairClick(Sender: TObject);
    procedure sbtnCadastroAlunosClick(Sender: TObject);
    procedure sbtnCadastroProfessoresClick(Sender: TObject);
    procedure sbtnFazerLogoffClick(Sender: TObject);
    procedure sbtnRelatorioAlunosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrMensagemBoasVindasTimer(Sender: TObject);
    procedure sbtnRelatorioProfessoresClick(Sender: TObject);
  private
    procedure AbrirCadastroAlunos;
    procedure AbrirCadastroProfessores;
    procedure RealizarLogoff;
    procedure AbrirRelatorioAlunos;
    procedure AbrirRelatorioProfessores;
  end;

implementation

{$R *.dfm}

uses
  Lumiere.frmLogin, Lumiere.frmCadastroProfessores, Lumiere.frmCadastroAlunos,
   Lumiere.frmRelatorioAlunos, Lumiere.frmRelatorioProfessores;

procedure TfrmTelaPrincipal.AbrirCadastroAlunos;
var
  lfrmCadastroAlunos: TfrmCadastroAlunos;
begin
  lfrmCadastroAlunos := TfrmCadastroAlunos.Create(nil);
  try
    lfrmCadastroAlunos.ShowModal();
  finally
    FreeAndNil(lfrmCadastroAlunos);
  end;
end;

procedure TfrmTelaPrincipal.AbrirCadastroProfessores;
var
  lfrmCadastroProfessores: TfrmCadastroProfessores;
begin
  lfrmCadastroProfessores := TfrmCadastroProfessores.Create(nil);
  try
    lfrmCadastroProfessores.ShowModal();
  finally
    FreeAndNil(lfrmCadastroProfessores);
  end;
end;

procedure TfrmTelaPrincipal.AbrirRelatorioAlunos;
var
  lfrmRelatorioAlunos: TfrmRelatorioAlunos;
begin
  lfrmRelatorioAlunos := TfrmRelatorioAlunos.Create(nil);
  try
    lfrmRelatorioAlunos.RLReport1.Preview();
  finally
    FreeAndNil(lfrmRelatorioAlunos);
  end;
end;

procedure TfrmTelaPrincipal.AbrirRelatorioProfessores;
var
  lfrmRelatorioProfessores: TfrmRelatorioProfessores;
begin
  lfrmRelatorioProfessores := TfrmRelatorioProfessores.Create(nil);
  try
    lfrmRelatorioProfessores.RLReport1.Preview();
  finally
    FreeAndNil(lfrmRelatorioProfessores);
  end;
end;

procedure TfrmTelaPrincipal.tmrMensagemBoasVindasTimer(Sender: TObject);
begin
  lblMensagemBoasVindas.Left := lblMensagemBoasVindas.Left - 2;

  if lblMensagemBoasVindas.Left + lblMensagemBoasVindas.Width < 0 then
    lblMensagemBoasVindas.Left := pnlRodapeTelaInicial.Width;
end;

procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin
  lblMensagemBoasVindas.AutoSize := True;
  lblMensagemBoasVindas.Caption := '     Bem-vindo ao sistema de gestão escolar Lumière!     |     Projeto de estudos (Matheus Rodrigues)     ';
  lblMensagemBoasVindas.Left := pnlRodapeTelaInicial.Width;
end;

procedure TfrmTelaPrincipal.RealizarLogoff;
var
  lfrmLogin: TfrmLogin;
begin
  Self.Hide();
  lfrmLogin := TfrmLogin.Create(nil);
  try
    lfrmLogin.Show;
  finally
    FreeAndNil(lfrmLogin);
  end;
end;

procedure TfrmTelaPrincipal.sbtnCadastroAlunosClick(Sender: TObject);
begin
  AbrirCadastroAlunos();
end;

procedure TfrmTelaPrincipal.sbtnCadastroProfessoresClick(Sender: TObject);
begin
  AbrirCadastroProfessores();
end;

procedure TfrmTelaPrincipal.sbtnFazerLogoffClick(Sender: TObject);
begin
  RealizarLogoff();
end;

procedure TfrmTelaPrincipal.sbtnRelatorioAlunosClick(Sender: TObject);
begin
  AbrirRelatorioAlunos();
end;

procedure TfrmTelaPrincipal.sbtnRelatorioProfessoresClick(Sender: TObject);
begin
  AbrirRelatorioProfessores();
end;

procedure TfrmTelaPrincipal.sbtnSairClick(Sender: TObject);
begin
  Application.Terminate();
end;

end.
