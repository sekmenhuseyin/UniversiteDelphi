unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
form2.Table1.Active:=true;
form2.Table2.Active:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form2.QuickRep1.Preview;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
dbnavigator1.BtnClick(nbNext);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
dbnavigator1.BtnClick(nbPrior);
end;

end.
