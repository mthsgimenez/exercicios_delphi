program contagemwhile;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var i: Integer;

begin
  try
    i := 0;
    while i < 10 do begin
      i := i + 1;
      Writeln(i);
      sleep(1000);
    end;
    Writeln('Fim da contagem');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
