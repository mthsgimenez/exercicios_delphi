program contagem;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    for var i := 1 to 10 do begin
      Sleep(1000);
      Writeln(i);
    end;

    Writeln('Fim da contagem');
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
