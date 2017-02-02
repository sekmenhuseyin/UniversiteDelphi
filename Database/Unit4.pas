unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  form4.Close;
end;

end.
 