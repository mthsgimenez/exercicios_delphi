unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btnAdicionar: TButton;
    btnRemover: TButton;
    btnVerificar: TButton;
    edtNumeros: TEdit;
    lstNumeros: TListBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAdicionarClick(Sender: TObject);
var num: String;
begin
  num := edtNumeros.Text;

  if num <> '' then begin
    lstNumeros.AddItem(edtNumeros.Text, lstNumeros);
    edtNumeros.Text := '';
  end;
end;

procedure TForm1.btnRemoverClick(Sender: TObject);
begin
  lstNumeros.DeleteSelected;
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
var count, num: Integer;
var mensagem: String;
begin
  count := lstNumeros.GetCount;

  for var i := 0 to count - 1 do begin
    num := lstNumeros.Items[i].ToInteger;
    if not((num >= 10) and (num <= 100)) or ((num >= 30) and (num <= 40)) then begin
      mensagem := mensagem + lstNumeros.Items[i] + ': válido' + sLineBreak;
    end else begin
      mensagem := mensagem + lstNumeros.Items[i] + ': inválido' + sLineBreak;
    end;
  end;

  if mensagem <> '' then
    ShowMessage(mensagem);
end;

end.
