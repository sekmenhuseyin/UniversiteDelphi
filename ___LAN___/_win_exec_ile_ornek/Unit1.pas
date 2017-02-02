unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  tmp : string;
begin
  tmp := 'ping.exe'+' '+Edit1.Text;
  if Edit1.Text <> ''
    then begin
           winExec(PChar(tmp), SW_SHOW);
         end
    else showmessage('IP adresi yazýlmamýþ');

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 close;
end;

end.
