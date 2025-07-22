program tabuada;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  try
    for var i := 1 to 10 do begin
      for var j := 1 to 10 do begin
        Writeln(i, ' x ', j, ' = ', i * j);
      end;
      Writeln;
    end;
    Writeln('Printado com sucesso.');
    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
