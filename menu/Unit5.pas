unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ComCtrls;

type
  Tfrm_rapor = class(TForm)
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Gauge2: TGauge;
    Label2: TLabel;
    sex: TComboBox;
    Label1: TLabel;
    Gauge1: TGauge;
    procedure FormCreate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  dosya_yeri='C:\03041002\menu\OKBS.dat';
var
  frm_rapor: Tfrm_rapor;
  dosya:textfile;
  OGR_ad,OGR_soyad,OGR_blm,OGR_sex,OGR_dgm,OGR_no,OGR_vize,OGR_final,OGR_ort:string;

implementation

uses Unit1;

{$R *.dfm}

procedure Tfrm_rapor.FormCreate(Sender: TObject);
var
  sayi1,sayi2,toplam:integer;
begin
  sayi1:=0;sayi2:=0;toplam:=0;
  assignfile(dosya,dosya_yeri);
  reset(dosya);
  while not eof(dosya) do begin
    readln(dosya,OGR_no);
    readln(dosya,OGR_ad);
    readln(dosya,OGR_soyad);
    readln(dosya,OGR_blm);
    readln(dosya,OGR_sex);
    readln(dosya,OGR_dgm);
    readln(dosya,OGR_vize);
    readln(dosya,OGR_final);
    readln(dosya,OGR_ort);
    if 60<=strtofloat(ogr_ort) then sayi1:=sayi1+1;
    if OGR_sex=sex.Text then sayi2:=sayi2+1;
    toplam:=toplam+1;
  end;
  closefile(dosya);
  gauge1.MaxValue:=toplam;
  gauge1.Progress:=sayi1;
  gauge2.MaxValue:=toplam;
  gauge2.Progress:=sayi2;
  pagecontrol.ActivePageIndex:=frmmain.rapor_id;
end;

procedure Tfrm_rapor.TabSheet2Show(Sender: TObject);
begin
  sex.SetFocus;
end;

end.
