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

    if (num >= 10) and (num <= 20) or (num >= 30) and (num <= 40) then begin
      Writeln('V�lido');
    end else begin
      Writeln('Inv�lido');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
