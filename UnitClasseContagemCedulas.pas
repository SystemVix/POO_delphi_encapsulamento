unit UnitClasseContagemCedulas;

interface

uses
  Classes, Dialogs, SysUtils, Math;

type
  TContagemCedulas = class

  private
    { private declarations }

  protected
    { protected declarations }
    FValorContagem: Integer;
    FQtdNotas200: Integer;
    FQtdNotas100: Integer;
    FQtdNotas50: Integer;
    FQtdNotas20: Integer;
    FQtdNotas10: Integer;
    FQtdNotas5: Integer;
    FQtdNotas2: Integer;
    FQtdNotas1: Integer;

    procedure Distribuicao;
    procedure DefineValorContagem(valor: Integer);

  public
    { public declarations }
    function ObterDistribuicao: TStringList;
    property ValorContagem: Integer read FValorContagem
      write DefineValorContagem;

  published
    { published declarations }

  end;

implementation

{ TContagemCedulas }

procedure TContagemCedulas.Distribuicao;

var
  auxiliar: Integer;

begin
  auxiliar := FValorContagem;

  begin
    FQtdNotas200 := auxiliar div 200;
    auxiliar := auxiliar mod 200;

    if auxiliar > 0 then
    begin
      FQtdNotas100 := auxiliar div 100;
      auxiliar := auxiliar mod 100;

      if auxiliar > 0 then
      begin
        FQtdNotas50 := auxiliar div 50;
        auxiliar := auxiliar mod 50;

        if auxiliar > 0 then
        begin
          FQtdNotas20 := auxiliar div 20;
          auxiliar := auxiliar mod 20;

          if auxiliar > 0 then
          begin
            FQtdNotas10 := auxiliar div 10;
            auxiliar := auxiliar mod 10;

            if auxiliar > 0 then
            begin
              FQtdNotas5 := auxiliar div 5;
              auxiliar := auxiliar mod 5;

              if auxiliar > 0 then
              begin
                FQtdNotas2 := auxiliar div 2;
                auxiliar := auxiliar mod 2;

                FQtdNotas1 := auxiliar;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TContagemCedulas.DefineValorContagem(valor: Integer);
begin
  if valor < 0 then
  begin
    FValorContagem := 0
  end
  else
  begin
    FValorContagem := valor;
    Distribuicao();
  end;
end;

function TContagemCedulas.ObterDistribuicao: TStringList;

var
  lista: TStringList;

begin
  lista := TStringList.Create;

  lista.Add(IntToStr(FQtdNotas200) + ' nota(s) de 200');
  lista.Add(IntToStr(FQtdNotas100) + ' nota(s) de 100');
  lista.Add(IntToStr(FQtdNotas50) + ' nota(s) de 50');
  lista.Add(IntToStr(FQtdNotas20) + ' nota(s) de 20');
  lista.Add(IntToStr(FQtdNotas10) + ' nota(s) de 10');
  lista.Add(IntToStr(FQtdNotas5) + ' nota(s) de 5');
  lista.Add(IntToStr(FQtdNotas2) + ' nota(s) de 2');
  lista.Add(IntToStr(FQtdNotas1) + ' nota(s) de 1');

  Result := lista;
end;

end.
