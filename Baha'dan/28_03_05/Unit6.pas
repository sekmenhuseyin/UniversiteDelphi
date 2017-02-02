unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges;

type
  TrapForm1 = class(TForm)
    Label1: TLabel;
    sekil: TGauge;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rapForm1: TrapForm1;

implementation

{$R *.dfm}

procedure TrapForm1.FormCreate(Sender: TObject);
var
  Dosya         : TextFile;
  ogrNo,
  ad,
  soyad,
  bolum,
  cins,
  dat1,
  vize,
  final,
  ort           : string;
  TpKaySay      : word;
  BasSay        : word;
begin
  TpKaySay := 0; BasSay := 0;
  AssignFile(Dosya, 'C:\OKBS.DAT');
  reset(Dosya);
  while not eof(Dosya) do
     begin
       readLn(Dosya, ogrNo);
       readLn(Dosya, ad);
       readLn(Dosya, soyad);
       readLn(Dosya, bolum);
       readLn(Dosya, cins);
       readLn(Dosya, dat1);
       readLn(Dosya, vize);
       readLn(Dosya, final);
       readLn(Dosya, ort);
       inc(TpKaySay); // Toplam kayýt sayýsý
       if strTofloat(ort) >= 60.0
           then inc(BasSay); // 60 ve üzeri not alan sayýsý
     end;// while
  CloseFile(Dosya);
  {------ grafik çiziliyor ---------}
  sekil.MinValue := 0;
  sekil.MaxValue := tpKaySay;
  sekil.Progress := basSay;
  label2.caption := intTostr(basSay) + ' / ' + inttostr(tpKaySay);
end;

end.
