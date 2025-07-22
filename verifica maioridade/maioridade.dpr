program maioridade;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var idade: Integer;
var valido: Boolean;

begin
  try
    valido := false;
    while not valido do begin
    try
      Write('Digite a sua idade: ');
      Readln(idade);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('A idade deve ser um número inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if idade >= 18 then begin
      Writeln('Você é maior de idade');
    end else begin
      Writeln('Você é menor de idade');
    end;

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
