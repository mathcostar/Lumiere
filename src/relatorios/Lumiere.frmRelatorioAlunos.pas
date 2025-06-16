unit Lumiere.frmRelatorioAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioAlunos = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlblTitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  DataModule;

{$R *.dfm}

end.
