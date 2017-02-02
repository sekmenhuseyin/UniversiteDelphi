unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Memo2: TMemo;
    Button3: TButton;
    Memo3: TMemo;
    Button4: TButton;
    Memo4: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Dizi : array[0..9] of integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 i: byte;
begin
  randomize;
  Memo1.Clear;
  for i:= 0 to 9 do
               begin
                 memo1.Lines.Add(inttostr(random(50)));

               end
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,j:byte;
  fib:array[0..50] of longint;
begin
  fib[0]:=0;fib[1]:=1;
  Memo2.Clear;
  for i:=0 to 9 do begin
    if (strtoint(memo1.Lines[i])>1) then
      for j:=2 to strtoint(memo1.Lines[i]) do begin
        fib[j]:=fib[j-1]+fib[j-2];
      end;
    memo2.Lines.Add(inttostr(fib[strtoint(memo1.Lines[i])]));
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  j:byte;
  fib:array[0..50] of longint;
begin
  fib[0]:=0;fib[1]:=1;
  Memo3.Clear;
  memo3.Lines.Add(inttostr(fib[0]));
  memo3.Lines.Add(inttostr(fib[1]));
    for j:=2 to 40 do begin
      fib[j]:=fib[j-1]+fib[j-2];
      memo3.Lines.Add(inttostr(fib[j]));
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,j:byte;
  temp:longint;
  dizi:array[0..9] of longint;
begin
  for i:=0 to 9 do begin
    dizi[i]:=strtoint(memo2.Lines[i])
  end;
  for i:=0 to 8 do begin
    for j:=i to 9 do begin
      if dizi[i]>dizi[j] then begin
        temp:=dizi[i];
        dizi[i]:=dizi[j];
        dizi[j]:=temp;
      end;
    end;
  end;
  memo4.Clear;
  for i:=0 to 9 do begin
    memo4.Lines.Add(inttostr(dizi[i]))
  end;
end;

end.

