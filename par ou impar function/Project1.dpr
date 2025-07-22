program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function VerificaPar(num: Integer): Boolean;
begin
  if num mod 2 = 0 then begin
    Result := true;
  end else begin
    Result := false;
  end;
end;

var num: Integer;
begin
  try
    Write('Digite um número: ');
    Readln(num);
    if VerificaPar(num) then begin
      Writeln('É par!');
    end else begin
      Writeln('É ímpar!');
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
