unit Lumiere.frmRelatorioProfessores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelatorioProfessores = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlblTitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  DataModule;

end.
