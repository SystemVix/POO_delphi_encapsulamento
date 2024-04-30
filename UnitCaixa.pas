unit UnitCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFormCaixa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditContagem: TEdit;
    ButtonContar: TButton;
    MemoCedulas: TMemo;
    procedure ButtonContarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixa: TFormCaixa;

implementation

uses UnitClasseContagemCedulas;

{$R *.dfm}

procedure TFormCaixa.ButtonContarClick(Sender: TObject);

var
  contagem : TContagemCedulas;

begin
  contagem := TContagemCedulas.Create;

  try
    contagem.ValorContagem := StrToInt(EditContagem.Text);
    MemoCedulas.Clear;
    MemoCedulas.Lines.AddStrings(contagem.ObterDistribuicao);
  except
    ShowMessage('Contagem inválida!');
  end;

  contagem.Free;
end;

end.
