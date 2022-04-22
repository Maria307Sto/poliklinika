unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls, sDBComboBox,
  acDBComboBoxEx;

type
  TForm20 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DBComboBox1: TDBComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ADOQuery2AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

uses Unit21, Unit22, Unit1, Unit23;

{$R *.dfm}

procedure TForm20.Button1Click(Sender: TObject);
begin
Form21.Show;
end;

procedure TForm20.Button3Click(Sender: TObject);
begin
Form20.Close;
Form22.Show;
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
if Form20.ADOQuery1.Modified then
Form20.ADOQuery1.Post;
Form20.ADOQuery1.Append;
Form20.Show;
end;

procedure TForm20.Button4Click(Sender: TObject);
begin
Form23.show;
end;



procedure TForm20.ADOQuery2AfterOpen(DataSet: TDataSet);
begin
begin
ADOQuery2.First;
while not ADOQuery2.Eof do
begin
//DBComboBox1.Items.Add(ADOQuery2.FieldValues['']);
ADOQuery2.Next;
end;
end;
end;

end.
