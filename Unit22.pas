unit Unit22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm22 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Unit4, Unit21, Unit6, Unit1, Unit19, Unit20, Unit23;

{$R *.dfm}

procedure TForm22.Button4Click(Sender: TObject);
begin
Form22.Close;
end;

procedure TForm22.Button1Click(Sender: TObject);
begin
Form20.Show;
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm22.Button3Click(Sender: TObject);
begin
Form1.Show;
end;

procedure TForm22.Button5Click(Sender: TObject);
begin
Form22.Close;
Form23.Show;
end;

end.
