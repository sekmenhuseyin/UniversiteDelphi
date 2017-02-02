unit unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Gauges;

type
  TForm1 = class(TForm)
    Gauge1: TGauge;
    Memo1: TMemo;
    Memo2: TMemo;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    procedure Memo1Change(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  son=10;
var
  Form1: TForm1;
  dizi : array[1..son] of real;
  numbers : array[1..son] of real;

implementation

{$R *.dfm}

procedure Ortalama(var sc :real);
var
  miktar,i:integer;
  temp:real;
begin
  miktar:=form1.Memo1.Lines.Count;
  temp:=0;
  for i:=1 to miktar do
    temp:=temp+dizi[i];
  sc:=temp/miktar;
end;

procedure islem;
var
  miktar,i,j,buyuk:integer;
  ort,temp:real;
begin
  form1.Memo1.Clear;
  form1.Memo2.Clear;
  numbers[strtoint(form1.labelededit1.Text)]:=strtofloat(form1.labelededit2.Text);
  for i:=1 to son do
    dizi[i]:=numbers[i];
  for i:=1 to son-1 do
    for j:=i+1 to son do
      if dizi[i]<dizi[j] then begin
        temp:=dizi[i];
        dizi[i]:=dizi[j];
        dizi[j]:=temp;
      end;
  //dizinin normal hali memoya eklenir
  for i:=1 to son do
    if numbers[i]>-999 then form1.Memo1.Lines.Add(floattostr(numbers[i]));
  miktar:=form1.Memo1.Lines.Count;
  //dizinin sýralanmýþ hali memoya eklenir
  for i:=1 to miktar do
    form1.Memo2.Lines.Add(floattostr(dizi[i]));
  form1.Panel1.Caption:='En küçük eleman = '+form1.Memo2.Lines[miktar-1];
  form1.Panel2.Caption:='En büyük eleman = '+form1.Memo2.Lines[0];
  //ortalam hesaplanýr
  ortalama(ort);
  form1.Panel3.Caption:='Dizinin ortalamasý = '+floattostr(ort);
  //kaçýnýn 59nin üzerinde olduðu bulunur
  buyuk:=0;
  for i:=1 to miktar do
    if dizi[i]>=50 then
      buyuk:=buyuk+1;
  form1.Gauge1.Progress:=buyuk*10;
  form1.LabeledEdit2.SelectAll;
end;
procedure TForm1.Memo1Change(Sender: TObject);
begin
  labelededit1.Text:=inttostr(memo1.Lines.count+1);
  if labelededit1.Text='11' then labelededit1.text:='10';
end;

procedure TForm1.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then form1.LabeledEdit2.SetFocus
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure TForm1.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then islem
  else if ord(key)=44 then
  else if ord(key)=45 then
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  islem;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to son do
    numbers[i]:=-1000
end;

end.
