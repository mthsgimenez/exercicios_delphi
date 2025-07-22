program naointervaloou50;

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

    if not((num >= 10) and (num <= 100)) or (num = 50) then begin
      Writeln('Número válido');
    end else begin
      Writeln('Número inválido');
    end;


    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
