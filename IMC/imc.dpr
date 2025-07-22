program imc;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  altura, peso, resultado: Double;
  valido: Boolean;

begin
  try
    valido := false;
    while not valido do begin
    try
      Write('Digite a sua altura em metros: ');
      Readln(altura);
      Write('Digite o seu peso em kg: ');
      Readln(peso);
      valido := true;
    except
      on E: EInOutError do begin
        Writeln('A altura e o peso devem ser números' + sLineBreak);
        valido := false;
      end;
    end;
    end;

    resultado := peso / (altura * altura);
    Writeln('IMC: ' + resultado.ToString());

    if resultado <= 18.5 then begin
      Writeln('Abaixo do peso');
    end else if (resultado >= 18.5) and (resultado <= 24.9) then begin
      Writeln('Peso normal');
    end else if (resultado >= 25) and (resultado <= 29.9) then begin
      Writeln('Sobrepeso');
    end else if (resultado >= 30) and (resultado <= 34.9) then begin
      Writeln('Obesidade I');
    end else if (resultado >= 35) and (resultado <= 39.9) then begin
      Writeln('Obesidade II');
    end else if resultado >= 40 then begin
      Writeln('Obesidade III');
    end;

    Readln;
  except
    on E: Exception do begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
