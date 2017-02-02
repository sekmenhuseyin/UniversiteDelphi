unit mainUN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TmainForm = class(TForm)
    baslikLabel: TLabel;
    aLabel: TLabel;
    bLabel: TLabel;
    aEdit: TEdit;
    bEdit: TEdit;
    sonucLabel: TLabel;
    HesaplaBtn: TButton;
    TestBtn1: TButton;
    TestBtn2: TButton;
    kapatBtn: TButton;
    TestBtn3: TButton;
    TestBtn4: TButton;
    procedure HesaplaBtnClick(Sender: TObject);
    procedure kapatBtnClick(Sender: TObject);
    procedure TestBtn1Click(Sender: TObject);
    procedure TestBtn2Click(Sender: TObject);
    procedure TestBtn4Click(Sender: TObject);
    procedure TestBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    {----- baþka formlar tarafýndan eriþilmesi istenen deðiþkenler proc ve fuct.......}
  end;

var
  mainForm: TmainForm;
  {-----global deðiþkenler ------}
implementation

{$R *.dfm}

procedure TmainForm.HesaplaBtnClick(Sender: TObject);
{---- local deðiþkenler ------}
var
   a, b, alan : real;
begin
  {--- buton click yapýldýðýnda çalýþsýn -----}
   if (aEdit.Text <> '') and (bEdit.Text <> '')
       then begin
              a := strToFloat(aEdit.Text); //Uzun kenar
              b := strToFloat(bEdit.Text); //Kýsa kenar
              alan := a * b;
              sonucLabel.Caption := 'Alan = ' + floatToStr(alan);
              {   sonucLabel.Caption := 'Alan = ' +
                        floatToStr((strToFloat(aEdit.Text) * strToFloat(bEdit.Text)));}
            end
       else showmessage('Uzun kenar ve kýsa kenar boþ býrakýlamaz!!!');
end;

procedure TmainForm.kapatBtnClick(Sender: TObject);
begin
   mainForm.Close;
end;

procedure TmainForm.TestBtn1Click(Sender: TObject);
begin
  baslikLabel.Visible := True; 
end;

procedure TmainForm.TestBtn2Click(Sender: TObject);
begin
   baslikLabel.Visible := False;
end;

procedure TmainForm.TestBtn4Click(Sender: TObject);
begin
   aEdit.Enabled := False;
end;

procedure TmainForm.TestBtn3Click(Sender: TObject);
begin
   aEdit.Enabled := True;
end;

end.
