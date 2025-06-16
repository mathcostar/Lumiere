unit Lumiere.frmCadastroAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TfrmCadastroAlunos = class(TForm)
    pnlTituloCadastroAlunos: TPanel;
    pnlLocalizarAluno: TPanel;
    lblLocalizarAluno: TLabel;
    edtLocalizarAluno: TEdit;
    pnlInformacoesAluno: TPanel;
    lblNome: TLabel;
    lblProfessor: TLabel;
    dbedtNome: TDBEdit;
    dbedtProfessorVinculado: TDBEdit;
    dbgAlunos: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure edtLocalizarAlunoChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure Atualizar;
  end;

implementation

{$R *.dfm}

uses
  DataModule, Lumiere.frmNovoCadastroAlunos;

procedure TfrmCadastroAlunos.Atualizar;
begin
  if not dmConexao.tbAlunos.Active then
    Exit();

  dmConexao.tbAlunos.Close();
  dmConexao.tbAlunos.Open();
end;

procedure TfrmCadastroAlunos.edtLocalizarAlunoChange(Sender: TObject);
begin
  dmConexao.tbAlunos.Locate('nome', edtLocalizarAluno.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmCadastroAlunos.SpeedButton1Click(Sender: TObject);
var
  lfrmNovoCadastroAlunos: TfrmNovoCadastroAlunos;
begin
  lfrmNovoCadastroAlunos := TfrmNovoCadastroAlunos.Create(nil);
  try
    lfrmNovoCadastroAlunos.ShowModal();

    Atualizar();
  finally
    FreeAndNil(lfrmNovoCadastroAlunos);
  end;
end;

end.
