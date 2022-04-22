unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellApi, StdCtrls;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Label2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm10.Label2Click(Sender: TObject);
begin
  ShellExecute(handle,'Open','https://www.youtube.com/channel/UCh81T6WXMwsGdKyI14RaqTg',nil, nil, SW_SHOW);
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
Form10.Close;
Form6.Show;
end;

end.
