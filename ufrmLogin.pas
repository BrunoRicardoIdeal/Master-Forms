unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TfrmLogin = class(TForm)
    imgLogo: TImage;
    pnlInferior: TPanel;
    lblLogin: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblSenha: TLabel;
    btnLogin: TButton;
    btnCancelar: TButton;
    ActionListLogin: TActionList;
    acLogin: TAction;
    acCancelar: TAction;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.FormShow(Sender: TObject);
begin
 edtLogin.SetFocus;
end;

end.
