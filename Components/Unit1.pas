unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Open: TOpenDialog;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if open.Execute then begin
    image1.Picture.LoadFromFile(open.FileName);
    edit1.Text:= open.FileName;
  end;
end;

end.
