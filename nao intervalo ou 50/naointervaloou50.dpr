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
      Write('Digite um n�mero: ');
      Readln(num);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('O n�mero deve ser um n�mero inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if not((num >= 10) and (num <= 100)) or (num = 50) then begin
      Writeln('N�mero v�lido');
    end else begin
      Writeln('N�mero inv�lido');
    end;


    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
