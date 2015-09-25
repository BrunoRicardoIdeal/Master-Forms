unit uFrmMasterCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Generics.Collections;

type
  TFrmMasterCad = class(TForm)
    lblTitulo: TLabel;
    pnlPesquisas: TPanel;
    pnlResultados: TPanel;
    gridResultados: TDBGrid;
    pnlBotoes: TPanel;
    btnNovo: TButton;
    btnCancelar: TButton;
    btnGravar: TBitBtn;
    btnExcluir: TButton;
    pnlDados: TPanel;
    lblPesquisar: TLabel;
    ActBase: TActionList;
    actNovo: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actExcluir: TAction;
    actEdit: TAction;
    pnlTop: TPanel;
    btnFechar: TSpeedButton;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    FDWaitCursor: TFDGUIxWaitCursor;
    procedure actNovoExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure qryMasterAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMasterCad: TFrmMasterCad;


implementation

uses
  uFrmMenu,uDmLogin;

{$R *.dfm}

procedure TFrmMasterCad.actCancelarExecute(Sender: TObject);
begin
  btnCancelar.Enabled :=  false;
  btnGravar.Enabled   :=  false;
  btnNovo.Enabled     :=  true;
  btnExcluir.enabled  :=  true;
end;

procedure TFrmMasterCad.actEditExecute(Sender: TObject);
begin
  btnCancelar.Enabled :=  True;
  btnGravar.Enabled   :=  True;
  btnNovo.Enabled     :=  False;
  btnExcluir.enabled  :=  False;
end;

procedure TFrmMasterCad.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmene excluir o registro?','Atenção!',MB_YESNO) = mrNo then
  begin
    Abort;
  end;

   btnCancelar.Enabled :=  false;
   btnGravar.Enabled   :=  false;
   btnNovo.Enabled     :=  true;
   btnExcluir.enabled  :=  true;
end;

procedure TFrmMasterCad.actGravarExecute(Sender: TObject);
begin
  btnCancelar.Enabled :=  false;
  btnGravar.Enabled   :=  false;
  btnNovo.Enabled     :=  true;
  btnExcluir.enabled  :=  true;
end;

procedure TFrmMasterCad.actNovoExecute(Sender: TObject);
begin
  btnCancelar.Enabled :=  True;
  btnGravar.Enabled   :=  True;
  btnNovo.Enabled     :=  False;
  btnExcluir.enabled  :=  false;
end;

procedure TFrmMasterCad.btnFecharClick(Sender: TObject);
begin
  if pnlTop.Color = clSkyBlue then
  begin
    FrmMenu.fechaForm(self,FrmMenu.cbbFormsPessoas);
  end
  else
  begin
    FrmMenu.fechaForm(self,FrmMenu.cbbFormsFinanceiro);
  end;
end;

procedure TFrmMasterCad.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TFrmMasterCad.qryMasterAfterEdit(DataSet: TDataSet);
begin
 actEditExecute(Self);
end;

end.
