program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  system.sysutils;


function LerNome(): String;
var nome: String;
begin
  Write('Digite seu nome: ');
  Readln(nome);
  Result := nome;
end;


procedure EscreverNome(nome: String);
begin
  Writeln('Olá, ' + nome + '!');
end;


begin
  try
    var nome := LerNome;
    EscreverNome(nome);
    Readln;
  except
    on e: exception do
      writeln(e.classname, ': ', e.message);
  end;
end.
