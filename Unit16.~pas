unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellApi;

type
  TForm16 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
Form16.Close;
Form6.Show;
end;

procedure TForm16.Label1Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'https://minzdrav.gov.ru/news/2018/12/14/10184-minzdrav-rossii-podgotovil-pamyatku-dlya-grazhdan-o-garantiyah-besplatnogo-okazaniya-meditsinskoy-pomoschi',nil,nil, SW_SHOW);
end;

end.
