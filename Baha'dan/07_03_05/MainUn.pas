unit MainUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  ThesapForm = class(TForm)
    s2Label: TLabel;
    sayi1Edit: TEdit;
    sayi2Edit: TEdit;
    isTipabel: TLabel;
    tipCombo: TComboBox;
    hspBtn: TButton;
    sonLabel: TLabel;
    tipRadioGroup: TRadioGroup;
    Memo: TMemo;
    Button1: TButton;
    s1Label: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    ListBox1: TListBox;
    Button3: TButton;
    procedure hspBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hesapForm: ThesapForm;

implementation

{$R *.dfm}

procedure ThesapForm.hspBtnClick(Sender: TObject);
var
   sayi1, sayi2, sonuc : real;
begin
{   sonuc := 0;
   sayi1 :=strToFloat(sayi1Edit.text);
   sayi2 :=strToFloat(sayi2Edit.text);
   case tipCombo.ItemIndex of
     0 : sonuc := sayi1 + sayi2; // Toplam
     1 : sonuc := sayi1 - sayi2; // Çýkarma
     2 : sonuc := sayi1 * sayi2; // Çarpma
     3 : sonuc := sayi1 / sayi2 // Bölme
    else sonLabel.Caption := 'Geçersiz Ýþlem Tipi';
   end;
   if (tipCombo.ItemIndex <> -1)
       then sonLabel.Caption := floatToStr(sonuc); }
   sonuc := 0;
   sayi1 :=strToFloat(sayi1Edit.text);
   sayi2 :=strToFloat(sayi2Edit.text);
   case tipRadioGroup.ItemIndex of
     0 : begin
            sonuc := sayi1 + sayi2; // Toplam
            sonLabel.Caption := floatToStr(sonuc);
            panel2.Caption := floatToStr(sonuc);
            memo.Lines.Add(sayi1Edit.Text + ' + ' + sayi2Edit.Text + ' = ' + floatToStr(sonuc));
            ListBox1.Items.Add('Toplama');
         end;
     1 : begin
           sonuc := sayi1 - sayi2; // Çýkarma
           sonLabel.Caption := floatToStr(sonuc);
           panel2.Caption := floatToStr(sonuc);
           memo.Lines.Add(sayi1Edit.Text + ' - ' + sayi2Edit.Text + ' = ' + floatToStr(sonuc));
           ListBox1.Items.Add('Çýkarma');
         end;
     2 : begin
           sonuc := sayi1 * sayi2; // Çarpma
           sonLabel.Caption := floatToStr(sonuc);
           panel2.Caption := floatToStr(sonuc);
           memo.Lines.Add(sayi1Edit.Text + ' * ' + sayi2Edit.Text + ' = ' + floatToStr(sonuc));
           ListBox1.Items.Add('Çarpma');
         end;
     3 : begin
           sonuc := sayi1 / sayi2; // Bölme
           sonLabel.Caption := floatToStr(sonuc);
           panel2.Caption := floatToStr(sonuc);
           memo.Lines.Add(sayi1Edit.Text + ' * ' + sayi2Edit.Text + ' = ' + floatToStr(sonuc));
           ListBox1.Items.Add('Bölme');
         end;
   end;
   hesapForm.Caption := 'Dört Ýþlem' + ' / '+ intToStr(memo.Lines.Count);
end;

procedure ThesapForm.Button1Click(Sender: TObject);
begin
  memo.Clear;
  ListBox1.Clear;
end;

procedure ThesapForm.Button2Click(Sender: TObject);
begin
   sonLabel.Caption := memo.Lines[5];
end;

procedure ThesapForm.Button3Click(Sender: TObject);
begin
  panel2.Caption := ListBox1.Items[ListBox1.itemIndex];
end;

end.
