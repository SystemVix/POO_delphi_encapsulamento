program Project_Contagem_Cedulas;

uses
  Vcl.Forms,
  UnitCaixa in 'UnitCaixa.pas' {FormCaixa},
  UnitClasseContagemCedulas in 'UnitClasseContagemCedulas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCaixa, FormCaixa);
  Application.Run;
end.
