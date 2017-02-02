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
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    procedure cevir(s:String);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure cevir(s:String);
var
  a:String;
  i,n:Integer;
begin
  n:=length(s);
  for i:=1 to n do
    a[i]:=s[i];
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s:String;
  i:Integer;
begin
  if Edit1.Text<>'' then
  begin
  s:=Edit1.Text;
 // cevir(s);
  for i:=1 to length(s) do
    s[i]:=chr(ord(s[i])+5);
  Edit2.Text:=s;
 //Button1.Enabled:=False;
  //Button2.Enabled:=True;
  end
  else
  showMessage('Herhangi bir bilgi girilmedi');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s:String;
  i:Integer;
begin
  if Edit2.Text<>'' then
  begin
  s:=Edit2.Text ;
  for i:=1 to length(s) do
    s[i]:=chr(ord(s[i])-5);
  Edit3.Text:=s;
  //Button1.Enabled:=True;
  //Button2.Enabled:=False;
  end
  else
    showmessage('Bir yazý giriniz...');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ///Button2.Enabled:=False;
end;

end.
