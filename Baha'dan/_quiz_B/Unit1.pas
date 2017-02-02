unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Gauges;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Gauge1: TGauge;
    Label3: TLabel;
    diznoEdit: TLabeledEdit;
    sayEdit: TLabeledEdit;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Memo3: TMemo;
    Gauge2: TGauge;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Dizi : array[1..10] of word;
implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  {--------Diziye Ekle Butonu---------------}
  Dizi[strToint(diznoEdit.text)] := strToint(sayEdit.Text);
  dizNoEdit.Clear;
  sayEdit.Clear;
  diznoEdit.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  i              : byte;
  tAdet, cAdet   : byte;
  ckTop, tTop    : word;
begin
  {----------------Çözüm Butonu----------------------}
  tadet := 0;  cAdet := 0;
  ckTop := 0; tTop := 0;
  {------ Dizi dolduruluyor -----}
  memo1.Clear;
  memo2.Clear;
  memo3.Clear;
  for i := 1 to 10 do
     memo1.Lines.Add(intTostr(dizi[i]));
  {----- Çift ve Tek Sayýlar Bulunuyor -----}
  for i := 1  to 10 do
    begin
      if odd(Dizi[i])
         then begin
                tTop := tTop + Dizi[i];
                inc(tAdet);
                Memo2.Lines.Add(intTostr(Dizi[i]));
              end
         else begin
                ckTop := ckTop + sqr(Dizi[i]);
                inc(cAdet);
                Memo3.Lines.Add(intTostr(Dizi[i]));
              end;
     end;         
   Panel1.Caption := 'Tek Sayýlarýn Toplamý = ' + intTostr(tTop);
   Panel2.Caption := 'ÇiftSayýlarýn Karesinin Toplamý = ' + intTostr(ckTop);
   Gauge1.MinValue := 0;
   Gauge1.MaxValue := 10;
   Gauge1.Progress := tAdet;
   Gauge2.MinValue := 0;
   Gauge2.MaxValue := 10;
   Gauge2.Progress := cAdet;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
