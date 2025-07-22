program doisintervalos;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  num: Integer;
  valido: Boolean;

begin
  try
    valido := false;
    while not valido do begin
    try
      Write('Digite um número: ');
      Readln(num);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('O número deve ser um número inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if (num >= 10) and (num <= 20) or (num >= 30) and (num <= 40) then begin
      Writeln('Válido');
    end else begin
      Writeln('Inválido');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
