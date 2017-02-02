unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Gauges, Buttons;

type
  TrapForm1 = class(TForm)
    Label1: TLabel;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rapForm1: TrapForm1;

implementation

{$R *.dfm}

procedure TrapForm1.BitBtn1Click(Sender: TObject);
var
  dosya                : TextFile;
  topkayit,
  sonuc                : word;
  sno, ad, soyad, cins,
  dogtarihi, dogyeri,
  bmaas, kesinti, nmaas : string;
begin
  AssignFile(Dosya, 'C:\_project\31_03_05\PBS.TXT');
  reset(dosya);
  sonuc := 0; topkayit := 0;
  {----kay�tlar taran�yor ------}
  while not eof(dosya) do
    begin
       readLn(dosya, sno);
       readLn(dosya, ad);
       readLn(dosya, soyad);
       readLn(dosya, cins);
       readLn(dosya, dogtarihi);
       readLn(dosya, dogyeri);
       readLn(dosya, bmaas);
       readLn(dosya, kesinti);
       readLn(dosya, nmaas);
       inc(topkayit); // topkayit artt�r�l�yor;
       if strToint(nmaas) >= 850 then inc(sonuc);
    end;
  closeFile(dosya);
  {----- grafik haz�rlan�yor-----}
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := topkayit;
  Gauge1.Progress := sonuc;
  label2.caption := intTostr(sonuc) + ' / ' + intTostr(topkayit);
end;

end.
