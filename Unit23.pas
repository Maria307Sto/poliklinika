unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, sDBComboBox, Grids, DBGrids, DB, ADODB;

type
  TForm23 = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    sDBComboBox1: TsDBComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    sDBComboBox2: TsDBComboBox;
    sDBComboBox3: TsDBComboBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure sDBComboBox1Change(Sender: TObject);
    procedure ADOQuery2AfterOpen(DataSet: TDataSet);
    procedure sDBComboBox2Change(Sender: TObject);
    procedure sDBComboBox3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

uses Unit22, Unit4, Unit13;

{$R *.dfm}

procedure TForm23.Button1Click(Sender: TObject);
begin
Form23.Close;
Form4.Show;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
Form23.Close;
Form13.Show;
end;

procedure TForm23.Button3Click(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery1.SQL.Text:= 'SELECT * FROM zapisi INNER JOIN vrachi ON zapisi.id_vrach=vrachi.ID';
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
end;

procedure TForm23.sDBComboBox1Change(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery1.SQL.Text:= 'SELECT * FROM zapisi INNER JOIN vrachi ON zapisi.id_vrach=vrachi.ID WHERE vrachi.fam LIKE "'+sDBComboBox1.Text+'%"';
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
end;

procedure TForm23.ADOQuery2AfterOpen(DataSet: TDataSet);
begin
ADOQuery2.First;
while not ADOQuery2.Eof do
  begin
  sDBComboBox1.Items.Add(ADOQuery2.FieldValues['fam']);
  sDBComboBox2.Items.Add(ADOQuery2.FieldValues['name']);
  sDBComboBox3.Items.Add(ADOQuery2.FieldValues['surname']);
  ADOQuery2.Next;
  end;
end;

procedure TForm23.sDBComboBox2Change(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery1.SQL.Text:= 'SELECT * FROM zapisi INNER JOIN vrachi ON zapisi.id_vrach=vrachi.ID WHERE vrachi.name LIKE "'+sDBComboBox2.Text+'%"';
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
end;

procedure TForm23.sDBComboBox3Change(Sender: TObject);
begin
ADOQuery1.Active:=false;
ADOQuery1.SQL.Text:= 'SELECT * FROM zapisi INNER JOIN vrachi ON zapisi.id_vrach=vrachi.ID WHERE vrachi.surname LIKE "'+sDBComboBox2.Text+'%"';
ADOQuery1.ExecSQL;
ADOQuery1.Active:=true;
end;

end.
