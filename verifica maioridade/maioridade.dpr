program maioridade;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var idade: Integer;
var valido: Boolean;

begin
  try
    valido := false;
    while not valido do begin
    try
      Write('Digite a sua idade: ');
      Readln(idade);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('A idade deve ser um n�mero inteiro' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    if idade >= 18 then begin
      Writeln('Voc� � maior de idade');
    end else begin
      Writeln('Voc� � menor de idade');
    end;

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
