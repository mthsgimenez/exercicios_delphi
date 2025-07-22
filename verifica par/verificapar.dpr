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

    if num mod 2 = 0 then begin
      Writeln('O n�mero � par');
    end else begin
      Writeln('O n�mero � �mpar');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
