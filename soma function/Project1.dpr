program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function PedirNumero: Double;
var num: Double;
begin
  Write('Digite um n�mero: ');
  Readln(num);
  Result := num;
end;

function Somar(numero1, numero2: Double): Double;
begin
  Result := numero1 + numero2;
end;

begin
  try
    var num1 := PedirNumero;
    var num2 := PedirNumero;

    Writeln('A soma �: ' + Somar(num1, num2).ToString);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
