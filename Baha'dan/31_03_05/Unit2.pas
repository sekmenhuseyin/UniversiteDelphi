unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TpForm = class(TForm)
    perSicilEdit: TLabeledEdit;
    adEdit: TLabeledEdit;
    soyadEdit: TLabeledEdit;
    bMaasEdit: TLabeledEdit;
    kesEdit: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cinsCombo: TComboBox;
    dogYerCombo: TComboBox;
    dogTar: TDateTimePicker;
    nMaasEdit: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pForm: TpForm;

implementation

{$R *.dfm}

procedure TpForm.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TpForm.BitBtn1Click(Sender: TObject);
var
  Dosya : TextFile;
begin
  if Application.MessageBox('Dosyaya kaydedilsin mi ?', 'Uyarý',
                             MB_OKCANCEL + MB_DEFBUTTON1) = IDOK
       then begin
              AssignFile(Dosya, 'C:\_project\31_03_05\PBS.TXT');
              append(Dosya);
              {--------Alanlar eklenecek -------------}
              writeLn(Dosya, perSicilEdit.Text);
              writeLn(Dosya, adEdit.Text);
              writeLn(Dosya, soyadEdit.Text);
              writeLn(Dosya, cinsCombo.Text);
              writeLn(Dosya, dogYerCombo.Text);
              writeLn(Dosya, dateTostr(dogTar.date));
              writeLn(Dosya, bMaasEdit.Text);
              writeLn(Dosya, kesEdit.Text);
              nMaasEdit.Text := floatTostr(strTofloat(bMaasEdit.Text) - strTofloat(kesEdit.Text));
              writeLn(Dosya, nMaasEdit.Text);
              closeFile(Dosya);
              showMessage('Kayýt iþlemi tamamlandý...');
            end
      else showmessage('Dosyaya kaydetme iþleminden vazgeçildi...');
end;

procedure TpForm.BitBtn2Click(Sender: TObject);
begin
  perSicilEdit.Clear;
  adEdit.Clear;
  soyadEdit.Clear;
  cinsCombo.itemindex := 0;
  dogYerCombo.itemindex := 0;
  dogtar.date := now;
  bMaasEdit.Text := '0';
  kesEdit.Text := '0';
  nMaasEdit.Text := '0';
end;

end.
