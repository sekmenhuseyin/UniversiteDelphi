unit Not_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, db;

type
  TForm2 = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    ComboBox1: TComboBox;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure enter;

  end;

var
  Form2: TForm2;

implementation
uses dataUn;

{$R *.dfm}
procedure TForm2.enter;
begin
   showmodal;
end;   

procedure TForm2.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  case Button of
  //nbFirst  : BtnName:='nbFirst';

  nbpost:begin
            try
               dm.T_Dersler.Edit;
               dm.T_DerslerDERSKOD.Value:=combobox1.ItemIndex;
               dm.T_DerslerORT.Value:=dm.T_DerslerVIZE.Value*0.4+
                                      dm.T_DerslerFINAL.Value*0.6;
               dm.T_Dersler.Post;
            except
              on edatabaseerror do
                showmessage('Ýþlem Yapýlamadý!');
          end;
    end;
 end;

  end;

procedure TForm2.DBEdit4Change(Sender: TObject);
begin
   combobox1.ItemIndex:=dm.T_DerslerDERSKOD.Value;
end;

end.
