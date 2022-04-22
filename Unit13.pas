unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, ADODB, Mask, DBCtrls, Grids, DBGrids;

type
  TForm13 = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Button1: TButton;
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
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    PDF1: TMenuItem;
    RTF1: TMenuItem;
    DOCX1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure RTF1Click(Sender: TObject);
    procedure DOCX1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit4, Unit15, Unit18, Unit19, Unit23;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
Form13.Close;
Form4.Show;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
if Form13.ADOQuery1.Modified then
Form13.ADOQuery1.Post;
Form13.ADOQuery1.Append;
Form13.Show;
end;



procedure TForm13.N2Click(Sender: TObject);
begin
Form13.ADOQuery1.Append;
Form13.Show;
end;

procedure TForm13.N3Click(Sender: TObject);
begin
Form13.Show;
end;

procedure TForm13.N4Click(Sender: TObject);
begin
Form15.Show;
end;

procedure TForm13.N6Click(Sender: TObject);
begin
Form18.Show;
Form18.frxReport1.ShowReport();
end;

procedure TForm13.N9Click(Sender: TObject);
begin
Form13.Close;
end;

procedure TForm13.PDF1Click(Sender: TObject);
begin
Form18.frxReport1.ShowReport();
Form18.frxReport1.Export(Form18.frxPDFexport1);
end;

procedure TForm13.RTF1Click(Sender: TObject);
begin
Form18.frxReport1.ShowReport();
Form18.frxReport1.Export(Form18.frxRTFexport1);
end;

procedure TForm13.DOCX1Click(Sender: TObject);
begin
Form18.frxReport1.ShowReport();
Form18.frxReport1.Export(Form18.frxDOCXexport1);
end;

procedure TForm13.N8Click(Sender: TObject);
begin
Form18.frxReport1.ShowReport();
Form18.frxReport1.Print;
end;

procedure TForm13.FormActivate(Sender: TObject);
begin
ADOQuery1.Insert;
end;

end.
