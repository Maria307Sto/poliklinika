unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, StdCtrls, DB, ADODB, Unit19;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit21, Unit22;

{$R *.dfm}


procedure TForm1.N4Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Form1.ADOQuery1.Append;
  Form2.Show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form4.Show;
Form1.Hide;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var help1,help2:string;
begin
 help1:= '%' + Form1.Edit1.Text +'%';
 help2:= QuotedStr(help1);
 with Form1.ADOQuery1 do
 begin
 Close;
 SQL.Clear;
 SQL.Add('select * From spravochnik where primechania like'+ help2+ ' or Fam like'+help2+ ' or name like'+ help2+ ' or surname like'+ help2+ ' or number_tel like'+ help2+ ' or role like'+ help2+ ' order by primechania');
 Open;
 end;
end;

end.
