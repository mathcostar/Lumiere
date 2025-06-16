unit Lumiere.frmNovoCadastroAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, FireDAC.Comp.Client,
  Data.DB;

type
  TfrmNovoCadastroAlunos = class(TForm)
    lblNome: TLabel;
    lblProfessor: TLabel;
    edtNome: TEdit;
    sbtnGravar: TSpeedButton;
    sbtnCancelar: TSpeedButton;
    cbProfessores: TDBLookupComboBox;
    procedure sbtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbtnCancelarClick(Sender: TObject);
  private
    procedure Cadastrar;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  DataModule;

procedure TfrmNovoCadastroAlunos.Cadastrar;
var
  Q: TFDQuery;
begin
  if (edtNome.Text = '') or (VarIsNull(cbProfessores.KeyValue)) then
    begin
      ShowMessage('Preencha todos os campos.');
      Abort();
    end;

  Q := TFDQuery.Create(nil);
  try
    Q.Connection := dmConexao.fdConexao;

    Q.SQL.Text := 'INSERT INTO lumiere.alunos (nome, professor_id) VALUES (:nome, :prof_id)';
    Q.ParamByName('nome').AsString := edtNome.Text;
    Q.ParamByName('prof_id').AsInteger := cbProfessores.KeyValue;

    Q.ExecSQL();

    ShowMessage('Aluno cadastrado com sucesso!');

    LimparCampos();
  finally
    Q.Free();
  end;
end;

procedure TfrmNovoCadastroAlunos.LimparCampos;
begin
  edtNome.Clear();
  cbProfessores.KeyValue := Null;
end;

procedure TfrmNovoCadastroAlunos.FormCreate(Sender: TObject);
begin
  if not dmConexao.tbProfessores.Active then
    dmConexao.tbProfessores.Open;

  cbProfessores.ListSource := dmConexao.dsProfessores;
  cbProfessores.KeyField := 'id';
  cbProfessores.ListField := 'nome';
end;

procedure TfrmNovoCadastroAlunos.sbtnGravarClick(Sender: TObject);
begin
  Cadastrar();
end;

procedure TfrmNovoCadastroAlunos.sbtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
