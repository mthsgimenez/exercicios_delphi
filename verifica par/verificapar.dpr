program verificapar;

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

    if num mod 2 = 0 then begin
      Writeln('O número é par');
    end else begin
      Writeln('O número é ímpar');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
