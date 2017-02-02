unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, DB, DBTables, QRCtrls;

type
  TForm2 = class(TForm)
    Table1: TTable;
    Table2: TTable;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    DataSource1: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
