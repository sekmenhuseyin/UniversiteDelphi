unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
    function faktoriyel(a : word) : longInt;
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
function TForm1.faktoriyel(a : word) : longInt;
begin
  if a = 1 then faktoriyel := 1
     else faktoriyel := a * faktoriyel(a - 1);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> ''
      then panel1.Caption := intToStr(faktoriyel(strToint(Edit1.Text)))
      else showmessage('Sayý girmeniz gerekiyor!');
end;

end.
