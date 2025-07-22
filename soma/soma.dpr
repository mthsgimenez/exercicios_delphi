program soma;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var num1, num2, resultado: Integer;
var valido: Boolean;

begin
  try
    valido := false;
    while not valido do begin
    try
      Write('Digite o primeiro n�mero: ');
      Readln(num1);
      Write('Digite o segundo n�mero: ');
      Readln(num2);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('Digite um -> N�MERO <-' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    resultado := num1 + num2;
    Writeln('A soma �: ' + resultado.ToString());

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
