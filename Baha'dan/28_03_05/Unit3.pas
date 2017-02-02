unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TyeniForm = class(TForm)
    ogrNoText: TLabeledEdit;
    adText: TLabeledEdit;
    soyadText: TLabeledEdit;
    bolumText: TComboBox;
    Label1: TLabel;
    cinsText: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dt1: TDateTimePicker;
    vizeText: TLabeledEdit;
    finalText: TLabeledEdit;
    ortText: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  yeniForm: TyeniForm;

implementation

{$R *.dfm}

procedure TyeniForm.BitBtn2Click(Sender: TObject);
var
  Dosya : TextFile;
  temp  : real;
begin
  AssignFile(Dosya, 'C:\OKBS.DAT');
  Append(Dosya);
  writeLn(Dosya, ogrNoText.Text);
  writeLn(Dosya, adText.Text);
  writeLn(Dosya, soyadText.Text);
  writeLn(Dosya, bolumText.Text);
  writeLn(Dosya, cinsText.Text);
  writeLn(Dosya, dateTostr(dt1.date));
  writeLn(Dosya, vizeText.Text);
  writeLn(Dosya, finalText.Text);
  temp := (strToint(vizeText.Text))*0.3
            + (strToint(finalText.Text)) * 0.7;
  ortText.Text := floattostr(temp);
  writeLn(Dosya, ortText.Text);
  CloseFile(Dosya);
end;

procedure TyeniForm.BitBtn1Click(Sender: TObject);
begin
   ogrNoText.Clear;
   adText.Clear;
   soyadText.Clear;
   dt1.Date := now; // günün tarih ve saati
   vizeText.Text := '0';
   finalText.Text := '0';
   ortText.Text := '0';
end;

procedure TyeniForm.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
