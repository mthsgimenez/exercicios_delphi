program intervalo;

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
        Writeln('Digite um número inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if (num >= 50) and (num <= 100) then begin
      Writeln('O número está no intervalo de 50-100');
    end else begin
      Writeln('O número não está no intervalo de 50-100');
    end;

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
