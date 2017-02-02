unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Mask;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Open: TOpenDialog;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBImage1: TDBImage;
    SpeedButton2: TSpeedButton;
    ComboBox1: TComboBox;
    DBEdit4: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
  if open.Execute then dbimage1.Picture.LoadFromFile(open.FileName);
end;

procedure TForm5.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if button=nbEdit then speedbutton1.Enabled:=true
  else if button=nbInsert then speedbutton1.Enabled:=true
  else if button=nbPost then speedbutton1.Enabled:=false
  else if button=nbCancel then speedbutton1.Enabled:=false
  else combobox1.ItemIndex:=strtoint(dbedit4.Text)-1;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
  form5.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  combobox1.ItemIndex:=strtoint(dbedit4.Text)-1;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
  dbedit4.Text:=inttostr(combobox1.ItemIndex+1);
end;

end.
