unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,DBCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
   Form3.Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form1.ADOQuery1.Delete;
Form3.Close;
end;

end.
