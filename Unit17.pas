unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm17 = class(TForm)
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
  Form17: TForm17;

implementation

uses Unit12;

{$R *.dfm}

procedure TForm17.Button2Click(Sender: TObject);
begin
Form17.Close;
end;

procedure TForm17.Button1Click(Sender: TObject);
begin
Form12.ADOQuery1.Delete;
Form17.Close;
end;

end.
