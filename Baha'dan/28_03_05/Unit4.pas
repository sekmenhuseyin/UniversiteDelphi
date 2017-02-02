unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TsilForm = class(TForm)
    silEdit: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  silForm: TsilForm;

implementation

{$R *.dfm}

procedure TsilForm.BitBtn1Click(Sender: TObject);
var
  Dosya, TDosya : TextFile;
  ogrNo,
  ad,
  soyad,
  bolum,
  cins,
  dat1,
  vize,
  final,
  ort           : string;
  silCnt        : word;
begin
  silCnt := 0;
  if Application.MessageBox('kayýt silinecek ?' , 'Uyarý',
                            MB_OKCANCEL + MB_DEFBUTTON2) = IDOK
         then begin
                 AssignFile(Dosya, 'C:\OKBS.DAT');
                 AssignFile(TDosya, 'C:\TEMP.DAT');
                 reset(Dosya); rewrite(TDosya);
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
                      if (silEdit.Text <> ogrNo)
                         then begin
                                 writeLn(TDosya, ogrNo);
                                 writeLn(TDosya, ad);
                                 writeLn(TDosya, soyad);
                                 writeLn(TDosya, bolum);
                                 writeLn(TDosya, cins);
                                 writeLn(TDosya, dat1);
                                 writeLn(TDosya, vize);
                                 writeLn(TDosya, final);
                                 writeLn(TDosya, ort);
                              end
                         else inc(silCnt);
                  end;// while
                CloseFile(Dosya);
                CloseFile(TDosya);
                Erase(Dosya);
                Rename(TDosya, 'C:\OKBS.DAT');
                if silCnt = 0 then showmessage('Silinecek kayýt dosyada yok ...!')
                     else showMessage('Silme iþlemi tamamlandý. '+intTostr(silCnt) + ' adet kayýt silindi !');
              end; // if
end;

end.
