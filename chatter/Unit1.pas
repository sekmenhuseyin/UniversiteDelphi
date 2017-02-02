unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, IdBaseComponent, IdComponent, IdRawBase,
  IdRawClient, IdIcmpClient;

type
  TForm1 = class(TForm)
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    ClientSocket1: TClientSocket;
    ServerSocket1: TServerSocket;
    iptarama: TIdIcmpClient;
    Button2: TButton;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure iptaramaReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  say:integer;
  ip:string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
serversocket1.Port:=23; //23 nolu portu kullan
serversocket1.Active:=true;
clientsocket1.Port:=23;
//clientsocket1.Active:=true;
form1.Show;
button2click(sender);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  clientsocket1.Active:=false;
  serversocket1.Active:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var deger:integer;
begin
  if edit2.text<>'' then begin
    if clientsocket1.active=true then begin
      //socket.sendtext ile edit2.text clientsocketin hostunda
      //belirtilen ip adresli bilgisayara gönderilir.
      deger:=clientsocket1.Socket.SendText(edit2.Text); //deger=göderilen text
      memo1.lines.add('_'+clientsocket1.Socket.LocalHost);  //uzunluðu
      memo1.lines.add(edit2.Text);
      memo1.Lines.Add('');
      edit2.Text:='';
      edit2.SetFocus;
    end;
  end;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
     beep;
     memo1.Lines.Add('_'+socket.RemoteHost); // bilgisayar adi
     memo1.Lines.Add(socket.ReceiveText);//alýnan text
     memo1.Lines.Add('');
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then button1Click(edit2);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
begin
  listbox1.Clear; say:=0;
  iptarama.ReceiveTimeout:=10; // önemli bu kodu yazmassan 10 saat sürer
  for i:=1 to 254 do begin          // çünkü 10 ms içinde bulamazsa aramayý keser
    ip:='127.0.0.'+inttostr(i);
    //if ip<>clientsocket1.Socket.LocalAddress then benim ip deðilse hatalý
    iptarama.Host:=ip;
    label3.Caption:='192.168.1.'+inttostr(i)+' araþtýrýlýyor..';
    application.ProcessMessages;
    iptarama.Ping;
  end;
  label3.Caption:='Aða baðlý '+inttostr(say)+' adet bilgisayar bulundu..';
  if (listbox1.Count>0) then begin
     listbox1.Selected[0]:=true;
     ListBox1Click(sender);
  end;
  edit2.SetFocus;
end;

procedure TForm1.iptaramaReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);// ping sonucu olayý
var host:string;
begin
  if areplystatus.ReplyStatusType=rsecho then begin // ping atýlan bilgisayar aða
    say:=say+1;                                      //baðlýysa rsecho döndürür.
    label3.Caption:=ip+'adresinde bilgisayar bulundu adý araþtýrýlýyor..';
    application.ProcessMessages;
    listbox1.items.Add(ip);
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if listbox1.ItemIndex>=0 then begin
    clientsocket1.Active:=false; // yapmazsak hata verir.
    clientsocket1.Host:=listbox1.Items.Strings[listbox1.itemindex];
    clientsocket1.Active:=true;
    label1.Caption:='Gönderilen : '+clientsocket1.Host;
  end;
end;

end.
