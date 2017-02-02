unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
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
dosya:pchar;
begin
  dosya:=pchar(edit1.Text);
  WinExec(dosya,SW_SHOW);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    edit1.Text:=OpenDialog1.FileName;
  end;
end;

end.
