program olanome;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var nome: String;

begin
  try
    Write('Digite o seu nome: ');
    Readln(nome);

    Writeln('Ol�, ' + nome + '!');
    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
