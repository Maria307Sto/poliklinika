unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls;

type
  TForm19 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;
  USER: Integer;

implementation

uses Unit4, Unit13, Unit1, Unit12, Unit7, Unit22;

{$R *.dfm}

procedure TForm19.Button1Click(Sender: TObject);
var qur:string;
begin
if (Form19.Edit1.Text = '') or (Form19.Edit2.Text = '')
then
ShowMessage('Введите данные!')
else
begin
qur:=Form12.ADOQuery2.SQL.Text;
Form12.ADOQuery2.Active:=false;
Form12.ADOQuery2.SQL.Text:='SELECT * FROM login_parol WHERE ((login = "'+edit1.text+'") and (password = "'+edit2.text+'"))';
Form12.ADOQuery2.ExecSQL;
Form12.ADOQuery2.Active:=true;
if(Form12.ADOQuery2.FieldValues['login'] = '') or (Form12.ADOQuery2.FieldValues['login'] = null)
then ShowMessage('Пользователь не найден')
else
begin
//сообщаем программе и пользователям, кто зашел в систему
if(Form12.ADOQuery2.FieldValues['login'] = 'admin') and (Form12.ADOQuery2.FieldValues['password'] = '0000') then
begin
Form4.Label2.Caption:='Администратор';
USER:=1;
end
else
begin
Form4.Label2.Caption:='Общая группа';
USER:=0;
end;
//блокируем для всех пользователей, кроме админа, запись данных
if(USER = 1) then Form1.N1.Enabled:=true
else
Form1.N1.Enabled:=false;
Form12.ADOQuery2.Active:=false;
Form12.ADOQuery2.SQL.Text:=qur;
Form12.ADOQuery2.ExecSQL;
Form12.ADOQuery2.Active:=true;
Form22.Show;
Form19.Close;
if(USER = 1) then Form12.N1.Enabled:=true
else
Form12.N1.Enabled:=false;
Form12.ADOQuery2.Active:=false;
Form12.ADOQuery2.SQL.Text:=qur;
Form12.ADOQuery2.ExecSQL;
Form12.ADOQuery2.Active:=true;
Form22.Show;
Form19.Close;
end;
end;

end;
end.
