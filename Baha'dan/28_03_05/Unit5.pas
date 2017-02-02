unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, Buttons;

type
  TaraForm = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    araEdit: TLabeledEdit;
    liste: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  araForm: TaraForm;

implementation

{$R *.dfm}

procedure TaraForm.FormCreate(Sender: TObject);
begin
  liste.Cells[1,0] := 'Öðr.No';
  liste.Cells[2,0] := 'Adý ve Soyadý';
  liste.Cells[3,0] := 'Bölümü';
  liste.Cells[4,0] := 'Cinsiyeti';
  liste.Cells[5,0] := 'Doðum Tarihi';
  liste.Cells[6,0] := 'Vize';
  liste.Cells[7,0] := 'Final';
  liste.Cells[8,0] := 'Ortalama';
end;

procedure TaraForm.BitBtn1Click(Sender: TObject);
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
  Cnt           : word;
  i             : byte;
begin
  Cnt := 0;
  // liste temizleniyor
  Liste.RowCount := 2;
  for i := 0 to 9 do
       Liste.Cells[i, 1] := '';
  //*********************
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
       if (araEdit.Text = ogrNo) or (araEdit.Text = '*')
           then begin
                  inc(Cnt);
                  if cnt>2 then Liste.RowCount := cnt + 1;
                  liste.Cells[0, Cnt] := intTostr(Cnt);
                  liste.Cells[1, Cnt] := ogrNo;
                  liste.Cells[2, Cnt] := ad + ' ' + soyad;
                  liste.Cells[3, Cnt] := bolum;
                  liste.Cells[4, Cnt] := cins;
                  liste.Cells[5, Cnt] := dat1;
                  liste.Cells[6, Cnt] := vize;
                  liste.Cells[7, Cnt] := final;
                  liste.Cells[8, Cnt] := ort;
                end // if
     end;// while
  CloseFile(Dosya);
end;

end.
