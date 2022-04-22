unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Mask, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm12 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  USER: Integer;
implementation

uses Unit6, Unit4, Unit17, Unit19;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
Form12.Close;
Form4.Show;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
if Form12.ADOQuery1.Modified then
Form12.ADOQuery1.Post;
if Form12.ADOQuery2.Modified then
Form12.ADOQuery2.Post;
Form12.ADOQuery1.Append;
Form12.ADOQuery2.Append;
Form12.Show;
end;

procedure TForm12.N2Click(Sender: TObject);
begin
Form12.ADOQuery1.Append;
Form12.ADOQuery2.Append;
Form12.Show;
end;

procedure TForm12.N3Click(Sender: TObject);
begin
Form12.Show;
end;

procedure TForm12.N4Click(Sender: TObject);
begin
Form17.Show;
end;

procedure TForm12.FormActivate(Sender: TObject);
begin
ADOQuery1.Insert;
ADOQuery2.Insert;
end;


end.
