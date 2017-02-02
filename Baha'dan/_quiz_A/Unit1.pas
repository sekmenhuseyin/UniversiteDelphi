unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    diznoEdit: TLabeledEdit;
    sayEdit: TLabeledEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Gauge1: TGauge;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Dizi : array[1..10] of currency;
implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Dizi[strToint(diznoEdit.text)] := strTofloat(sayEdit.Text);
  dizNoEdit.Clear;
  sayEdit.Clear;
  diznoEdit.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  i,j           : byte;
  top, ort      : currency;
  temp, ek, eb  : currency;
  adet          : byte;
begin
  top := 0.0; adet := 0;
  {------ Dizi dolduruluyor -----}
  memo1.Clear;
  for i := 1 to 10 do
     memo1.Lines.Add(floattostr(dizi[i]));
  {------- Dizi sýralanýp memo2 dolduruluyor-----}
  for i := 1 to 9 do
    for j := i+1 to 10 do
      begin
        if Dizi[i]>=Dizi[j]
           then begin
                  temp    := Dizi[i];
                  Dizi[i] := Dizi[j];
                  Dizi[j] := temp;
                end;
      end;
  memo2.Clear;    
  for i := 1 to 10 do
       memo2.Lines.Add(floattostr(dizi[i]));
  {---------Dizi Ortalamasý----------}
  for i := 1 to 10 do
     top := top + Dizi[i];
  ort := top / 10;
  Panel1.Caption := floatTostr(ort);
  {------- En büyük eleman ve En küçük Eleman ---------}
  ek := Dizi[1]; eb := 0;
  for i := 2 to 10 do
    begin
      if ek > Dizi[i] then ek := Dizi[i];
      if eb < Dizi[i] then eb := Dizi[i];
    end;
  Panel2.Caption := floatTostr(ek);
  Panel3.Caption := floatTostr(eb);
  {---- 50 den büyük olan sayý adedi----}
  for i := 1 to 10 do
    if Dizi[i] >= 50 then inc(adet);
  Gauge1.MaxValue := 10;
  Gauge1.MinValue := 0;
  Gauge1.Progress := adet;
  label3.caption := label3.caption + ' ('+ intTostr(adet)+') ';
end;

end.
