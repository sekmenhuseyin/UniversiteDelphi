unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TdeneForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    tipCombo: TComboBox;
    Button1: TButton;
    Panel4: TPanel;
    tiGrup: TRadioGroup;
    Button2: TButton;
    ListBox1: TListBox;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  deneForm: TdeneForm;

implementation

{$R *.dfm}

procedure TdeneForm.Button1Click(Sender: TObject);
var
  a, b, son : real;
begin
  a := 0; b := 0;
  if Edit1.Text <> ''
     then a := strTofloat(Edit1.Text);  // sayý1
  if Edit2.Text <> ''
     then b := strTofloat(Edit2.Text);  // sayi2
  case tipCombo.ItemIndex of
    0 : begin
           son := a + b;
           panel4.caption := floattostr(son);
           Memo1.Lines.Add(Edit1.Text + ' + ' +Edit2.Text + ' = ' + floatToStr(son));
        end;
    1 : begin
          son := a - b;
          panel4.caption := floattostr(son);
          Memo1.Lines.Add(Edit1.Text + ' - ' +Edit2.Text + ' = ' + floatToStr(son));
        end;
    2 : begin
          son := a * b;
          panel4.caption := floattostr(son);
          Memo1.Lines.Add(Edit1.Text + ' * ' +Edit2.Text + ' = ' + floatToStr(son));
        end;
    3 : begin
          son := a / b;
          panel4.caption := floattostr(son);
          Memo1.Lines.Add(Edit1.Text + ' / ' +Edit2.Text + ' = ' + floatToStr(son));
        end
    else panel4.caption := 'Geçersiz Ýþlem !';
  end; // case of
end;

procedure TdeneForm.Button2Click(Sender: TObject);
var
  a, b, son : real;
begin
  a := 0; b := 0;
  if Edit1.Text <> ''
     then a := strTofloat(Edit1.Text);  // sayý1
  if Edit2.Text <> ''
     then b := strTofloat(Edit2.Text);  // sayi2
  case tiGrup.ItemIndex of
    0 : begin
           son := a + b;
           panel4.caption := floattostr(son);
        end;
    1 : begin
          son := a - b;
          panel4.caption := floattostr(son);
        end;
    2 : begin
          son := a * b;
          panel4.caption := floattostr(son);
        end;
    3 : begin
          son := a / b;
          panel4.caption := floattostr(son);
        end
    else panel4.caption := 'Geçersiz Ýþlem !';
  end; // case of
end;

procedure TdeneForm.Button3Click(Sender: TObject);
var
  a, b, son : real;
begin
  a := 0; b := 0;
  if Edit1.Text <> ''
     then a := strTofloat(Edit1.Text);  // sayý1
  if Edit2.Text <> ''
     then b := strTofloat(Edit2.Text);  // sayi2
  case ListBox1.ItemIndex of
    0 : begin
           son := a + b;
           panel4.caption := floattostr(son);
        end;
    1 : begin
          son := a - b;
          panel4.caption := floattostr(son);
        end;
    2 : begin
          son := a * b;
          panel4.caption := floattostr(son);
        end;
    3 : begin
          son := a / b;
          panel4.caption := floattostr(son);
        end
    else panel4.caption := 'Geçersiz Ýþlem !';
  end; // case of
  deneForm.Caption := ListBox1.Items[ListBox1.itemIndex];
end;


procedure TdeneForm.Button4Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TdeneForm.Button5Click(Sender: TObject);
begin
  Panel4.Caption := Memo1.Lines[3];
  deneForm.Caption := 'Deneme Formu / ' + intToStr(Memo1.Lines.Count);
end;

end.
