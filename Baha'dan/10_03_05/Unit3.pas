unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(Edit1.Text);
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Top : longInt;
  i   : word;
begin
  Top := 0;
  for i:=0 to Memo1.Lines.Count-1 do
    Top := Top + strToint(Memo1.Lines[i]);
  Label2.caption := inttostr(Top);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,j : word;
  temp : string;
begin
  for i := 0 to Memo1.Lines.Count-2 do
    for j := i+1 to Memo1.Lines.Count-1 do
       begin
         if strToint(Memo1.Lines[i]) < strToint(Memo1.Lines[j])
            then begin
                    temp := Memo1.Lines[i];
                    Memo1.Lines[i] := Memo1.Lines[j];
                    Memo1.Lines[j] := temp;
                 end;
       end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Close;
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Clear;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

end.
