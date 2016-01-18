unit UfrmMasterPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.ExtCtrls ,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, Vcl.ActnList;

type
	TfrmMasterPesquisa = class(TForm)
    qryPesquisa: TFDQuery;
    pnlFundo: TPanel;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    grdPesquisa: TDBGrid;
    dsPesquisa: TDataSource;
    pnlBotoes: TPanel;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    btnPesquisar: TButton;
    acList: TActionList;
    acCancelar: TAction;
    acConfirmar: TAction;
    btnLimpar: TButton;
    acLimpar: TAction;
    acPesquisar: TAction;
    pnlTop: TPanel;
    lblTitulo: TLabel;
    procedure acCancelarExecute(Sender: TObject);
    procedure acConfirmarExecute(Sender: TObject);
    procedure acAtribuirValoresRetornoExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdPesquisaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acLimparExecute(Sender: TObject);
  private
    var ModalRes : Integer;
    { Private declarations }
	public

    { Public declarations }
  protected
   procedure AtribuirValoresRetorno;virtual;
   procedure PesquisarDiretamente(Codigo : Integer)overload;virtual;
  end;

var
	frmMasterPesquisa: TfrmMasterPesquisa;

implementation

{$R *.dfm}

procedure TfrmMasterPesquisa.acAtribuirValoresRetornoExecute(Sender: TObject);
begin
 if qryPesquisa.IsEmpty then
 begin
  Exit;
 end;
end;

procedure TfrmMasterPesquisa.acCancelarExecute(Sender: TObject);
begin
 ModalRes := mrCancel;
 Close;
end;

procedure TfrmMasterPesquisa.acConfirmarExecute(Sender: TObject);
begin
 AtribuirValoresRetorno;
 ModalRes := mrOk;
 Close;
end;



procedure TfrmMasterPesquisa.acLimparExecute(Sender: TObject);
begin
 qryPesquisa.Close;
end;

procedure TfrmMasterPesquisa.AtribuirValoresRetorno;
begin

end;

procedure TfrmMasterPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 acLimpar.Execute;
 ModalResult := ModalRes;
end;

procedure TfrmMasterPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13)then
 begin
   key := #0;
   if (ActiveControl.Name = 'grdPesquisa') then
   begin
     acConfirmarExecute(Sender);
   end
   else
   begin
    Perform(WM_NEXTDLGCTL,0,0);
   end;
 end
 else
 if (key = #27) then
 begin
  acCancelarExecute(Sender);
 end;

end;

procedure TfrmMasterPesquisa.grdPesquisaDblClick(Sender: TObject);
begin
 acConfirmarExecute(Sender);
end;

procedure TfrmMasterPesquisa.PesquisarDiretamente(Codigo: Integer);
begin
 // É necessário que a pesquisa dentro da FDQuery esteja com o parâmetro
 // de "código" correspondente, a exemplo : WHERE COD_PESSOA = :COD_PESSOA
end;

end.
