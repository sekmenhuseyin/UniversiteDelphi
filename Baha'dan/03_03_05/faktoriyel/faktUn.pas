unit faktUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function faktoriyel(a : word) : word;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.faktoriyel(a : word) : word;
begin
  faktoriyel := 5;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  fakt  : word;
  i     : word;
begin
  fakt := 1;
  for i:=1 to strToint(Edit1.Text) do
     fakt := fakt * i;
  Form1.Caption := intTostr(fakt);
end;

end.
