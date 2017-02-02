unit MainUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TanaForm = class(TForm)
    yariCapLabel: TLabel;
    alanLabel: TLabel;
    yariCapEdit: TEdit;
    alanBtn: TButton;
    cikisBtn: TButton;
    testBtn: TButton;
    Button1: TButton;
    procedure alanBtnClick(Sender: TObject);
    procedure cikisBtnClick(Sender: TObject);
    procedure testBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anaForm: TanaForm;

implementation

{$R *.dfm}

procedure TanaForm.alanBtnClick(Sender: TObject);
var
   yaricap, alan : real;

begin
 {----- Alan hesapla -----------}
  if yariCapEdit.Text <> ''
      then begin
             yaricap :=  strToFloat(yaricapEdit.Text);
             alan := sqr(yaricap) * 3.14;
             alanLabel.Caption := 'Dairenin Alaný = ' + floatToStr(alan);
           end
      else alanLabel.Caption := '';
end;

procedure TanaForm.cikisBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TanaForm.testBtnClick(Sender: TObject);
begin
  //yariCapEdit.Enabled := false;
  yariCapEdit.visible := false;
end;

procedure TanaForm.Button1Click(Sender: TObject);
begin
  //yariCapEdit.Enabled := true;
  yariCapEdit.visible := true;
end;

end.
