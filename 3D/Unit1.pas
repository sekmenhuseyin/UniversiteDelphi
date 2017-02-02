unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TForm1 = class(TForm)
    pre_img: TImage;
    GroupBox1: TGroupBox;
    X: TEdit;
    Y: TEdit;
    Z: TEdit;
    RX: TUpDown;
    RY: TUpDown;
    RZ: TUpDown;
    XX: TLabel;
    YY: TLabel;
    ZZ: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    xl: TLabel;
    yl: TLabel;
    zl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RZChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    procedure drawxyz(ini,fin:word;color:boolean);
    procedure rotate(ini,fin:byte;xrad,yrad,zrad,pxc,pyc,zoom:integer);
    procedure sortfaces(ini,fin:word);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

const
    {tüm bunlar bir dörtgene göre hesaplanmýþtýr.}
    {noktalarýn x,y ve z eksenlerindeki koordinatlarý için...}
  xc:array[0..7] of integer=(-2550, 2550, -2550, 2550, -2550,2550,-2550,2550);
  yc:array[0..7] of integer=(-2550, -2550, 2550, 2550, -2550,-2550,2550,2550);
  zc:array[0..7] of integer=(-2550, -2550, -2550, -2550, 2550,2550,2550,2550);
    {connection point-bir noktanýn hangi noktalara baðlandýðýný belirtir.}
    {0.nokta 1,2 ve 4e baðlý---1.nokta 5 ve 3 baðlý, 0a zaten baðlanmýþtý}
  cn:array[0..11,0..1] of byte= ((0,1),(0,2),(0,4),(1,5),(1,3),(2,3),(2,6),
                                   (3,7),(4,5),(4,6),(5,7),(6,7));
    {yüzeyleri}
    {ilk yüzey 0,1,5 ve 4 nolu noktalardan oluþmuþtur.}
  fc:array[0..5,0..3] of byte=((0,1,5,4),(0,4,6,2),(1,5,7,3),
                                 (4,5,7,6),(0,1,3,2),(2,3,7,6));
  xcenter:word=0;
  ycenter:word=0;
  zcenter:word=512;

var
  sintab,costab     :array[0..359] of currency;
  tx,ty,tz          :array[0..7] of integer;
  tmpx,tmpy,tmz     :array[0..7] of integer;
  zave,fseq         :array[0..5] of integer;
  face              :array[0..5,0..3] of word;
  cnpoint           :array[0..11,0..1] of word;
  a,b,c,xv,yv,zv    :currency;
  eye,eyeLim,eyeInc :real;
  rtcnt             :word;

procedure TForm1.drawxyz(ini,fin:word;color:boolean);
var
  cnt:integer;
begin
  if color then
    pre_img.Canvas.Pen.Color:=clblack
  else
    pre_img.Canvas.Pen.Color:=clwhite;
  for cnt:=ini to fin do begin
    pre_img.canvas.MoveTo(tmpx[cnpoint[cnt,0]],tmpy[cnpoint[cnt,0]]);
    pre_img.canvas.LineTo(tmpx[cnpoint[cnt,1]],tmpy[cnpoint[cnt,1]]);
  end;
end;

procedure tform1.rotate(ini,fin:byte;xrad,yrad,zrad,pxc,pyc,zoom:integer);
var
  i,cnt:longint;
begin
  for cnt:=ini to fin do begin
    a  := tx[cnt] * zoom;
    b  := ty[cnt] * zoom;
    c  := tz[cnt] * zoom;

    xv := costab[yrad] * a  - sintab[yrad] * c;
    zv := sintab[yrad] * a  + costab[yrad] * c;
    a  := costab[zrad] * xv + sintab[zrad] * b;
    yv := costab[zrad] * b  - sintab[zrad] * xv;
    c  := costab[xrad] * zv - sintab[xrad] * yv;
    b  := sintab[xrad] * zv + costab[xrad] * yv;

    a  := a * eye;
    b  := b * eye;
    c  := c * eye;

    i  := zcenter * zoom;
    tmz[cnt]  := trunc(c);
    tmpx[cnt] := trunc((xcenter*c-a*i)/(c-i)+pxc);
    tmpy[cnt] := trunc((ycenter*c-b*i)/(c-i)+pyc);
  end;
end;

procedure tform1.sortfaces(ini,fin:word);
var
  i,j,tmpa:integer;
begin
  for tmpa:=ini to fin do
    fseq[tmpa]:=tmpa-ini;
  for tmpa:=ini to fin do
    zave[tmpa]:=(tmz[face[tmpa,0]]+tmz[face[tmpa,1]]+
                 tmz[face[tmpa,2]]+tmz[face[tmpa,3]]) div 4;
  for i:=ini to fin-1 do
    for j:=i+1 to fin do
      if zave[i]<zave[j] then begin
        tmpa:=zave[i];        zave[i]:=zave[j];        zave[j]:=tmpa;
        tmpa:=fseq[i];        fseq[i]:=fseq[j];        fseq[j]:=tmpa;
      end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i,cnt:integer;
begin
  rtcnt:=0;
  eye:=0.005; {min boyut}  eyelim:=0.015; {max boyut}  eyeinc:=0.00025; {zoom katsayýsý}
  {...Hesaplamalarda kullanýlacak açýar için sin ve cos tablolarý oluþturuluyor!...}
  for cnt:=0 to 359 do begin
    sintab[cnt]:=sin(cnt*pi/180); //sin(açý in radyan)
    costab[cnt]:=cos(cnt*pi/180); //cos(açý in radyan)
  end;
  for i:=0 to 7 do begin
    tx[i]:=xc[i];    ty[i]:=yc[i];    tz[i]:=zc[i];
  end;
  for i:=0 to 11 do begin
    cnpoint[i,0]:=cn[i,0];    cnpoint[i,1]:=cn[i,1];
  end;
  for i:=0 to 5 do begin
    face[i,0]:=fc[i,0];    face[i,1]:=fc[i,1];    face[i,2]:=fc[i,2];    face[i,3]:=fc[i,3];
  end;
  {...ve gösteri baþlar...}
  drawxyz(0,11,false);
  rotate(0,7,rx.Position,ry.Position,rz.Position,127,127,1);
  sortfaces(0,5);
  drawxyz(0,11,true);
end;

procedure TForm1.RZChanging(Sender: TObject; var AllowChange: Boolean);
begin
  {...show must go on...}
  drawxyz(0,11,false);
  rotate(0,7,rx.Position,ry.Position,rz.Position,127,127,1);
  sortfaces(0,5);
  drawxyz(0,11,true);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  {...zoom in...}
  if eye+eyeinc<eyelim then eye:=eye+eyeinc;
  drawxyz(0,11,false);
  rotate(0,7,rx.Position,ry.Position,rz.Position,127,127,1);
  sortfaces(0,5);
  drawxyz(0,11,true);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  {...zoom out...}
  if eye>0 then eye:=eye-eyeinc;
  drawxyz(0,11,false);
  rotate(0,7,rx.Position,ry.Position,rz.Position,127,127,1);
  sortfaces(0,5);
  drawxyz(0,11,true);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
    timer1.Enabled:=true
  else
    timer1.Enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if rtcnt<360 then
    inc(rtcnt)
  else
    rtcnt:=0;
  drawxyz(0,11,false);
  rotate(0,7,rtcnt,rtcnt,rtcnt,127,127,1);
  sortfaces(0,5);
  drawxyz(0,11,true);
  xl.Caption:='x = '+inttostr(rtcnt);
  yl.Caption:='y = '+inttostr(rtcnt);
  zl.Caption:='z = '+inttostr(rtcnt);
end;

end.
