unit uFrmMasterMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmMasterMenu = class(TForm)
    pnlPessoas: TPanel;
    pnlFinan: TPanel;
    imgLogo: TImage;
    imgNome: TImage;
    pnlTopo: TPanel;
    cbbFormsPessoas: TComboBox;
    imgFundo: TImage;
    cbbFormsFinanceiro: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure MostraForm(formulario : TForm; cbTelas : tComboBox);
    procedure FechaForm(formulario : TForm;cbTelas : TComboBox);
    procedure btnFinalizarClick(Sender: TObject);
    procedure cbbFormsPessoasChange(Sender: TObject);
    procedure cbbFormsFinanceiroChange(Sender: TObject);

  private
    { Private declarations }
  public
    lado : integer;
    { Public declarations }
  end;

var
  FrmMasterMenu: TFrmMasterMenu;

implementation

{$R *.dfm}

procedure TFrmMasterMenu.btnFinalizarClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmMasterMenu.cbbFormsFinanceiroChange(Sender: TObject);
var
  i : integer;
begin
  for I := 0 to MDIChildCount-1 do
  begin
    if MDIChildren[i].Hint = cbbFormsFinanceiro.text then
    begin
      MDIChildren[i].BringToFront;
    end;

  end;
end;
procedure TFrmMasterMenu.cbbFormsPessoasChange(Sender: TObject);
var
  i : integer;
begin
  for I := 0 to MDIChildCount-1 do
  begin
    if MDIChildren[i].Hint = cbbFormsPessoas.text then
    begin
      MDIChildren[i].BringToFront;
    end;

  end;
end;

procedure TFrmMasterMenu.FechaForm(formulario: TForm;cbTelas : TComboBox);
begin
  cbTelas.Items.Delete(cbTelas.Items.IndexOf(formulario.Hint));
  formulario.Close;
end;

procedure TFrmMasterMenu.FormShow(Sender: TObject);
begin
  self.Left   :=  0;
  self.Top    :=  0;
  self.width  :=  Screen.WorkAreawidth;
  self.Height :=  Screen.WorkAreaHeight;
end;

procedure TFrmMasterMenu.MostraForm(formulario: TForm;cbTelas : tComboBox);
begin
  if cbTelas.Items[cbTelas.Items.IndexOf(formulario.Hint)].IsEmpty then
  begin
    cbTelas.Items.Add(formulario.Hint);
  end;
  //LockWindow para testar melhor visualização na criação do form.
  //Sem que o usuário veja o mesmo ser redimensionado ao aparecer

  LockWindowUpdate(Handle);
  formulario.Show;
  LockWindowUpdate(0);
end;

end.
