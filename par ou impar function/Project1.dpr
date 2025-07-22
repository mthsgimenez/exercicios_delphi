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
    Write('Digite um n�mero: ');
    Readln(num);
    if VerificaPar(num) then begin
      Writeln('� par!');
    end else begin
      Writeln('� �mpar!');
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
