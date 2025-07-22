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
      Write('Digite um n�mero: ');
      Readln(num);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('Digite um n�mero inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if (num >= 50) and (num <= 100) then begin
      Writeln('O n�mero est� no intervalo de 50-100');
    end else begin
      Writeln('O n�mero n�o est� no intervalo de 50-100');
    end;

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
