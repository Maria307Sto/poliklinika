unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellApi;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
Form6.Show;
Form8.Hide;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
 ShellExecute(handle, 'open', 'http://mogochacrb.chitazdrav.ru/sites/default/files/docs/spisok_vrachi.pdf', nil, nil, SW_SHOW);
end;

end.
