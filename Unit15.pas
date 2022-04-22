unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit13;

{$R *.dfm}

procedure TForm15.Button2Click(Sender: TObject);
begin
Form15.Close;
end;

procedure TForm15.Button1Click(Sender: TObject);
begin
Form13.ADOQuery1.Delete;
Form15.Close;
end;

end.
