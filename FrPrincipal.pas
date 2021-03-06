//teste
{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit FrPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.JSON,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  FMX.ListBox, FMX.ListView.Types, FMX.ListView, FMX.Objects, FMX.Memo,
  System.DateUtils, FGX.ProgressDialog, Data.DB, FMX.Effects,
  MultiDetailAppearanceU, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,

{$IFDEF ANDROID}
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  FMX.Helpers.Android,
  Androidapi.Helpers,
  Androidapi.NativeActivity,
  Androidapi.JNIBridge,
  IdURI,
  Androidapi.JNI.Net,
{$ENDIF}
  DataPak.Android.BarcodeScanner;

type

  TRegObservacao = record
    ID: string;
    Descricao: String;
  end;

  TTabbedForm = class(TForm)
    HeaderToolBar: TToolBar;
    ToolBarLabel: TLabel;
    TabGourmet: TTabControl;
    TabLogin: TTabItem;
    TabMenu: TTabItem;
    TabInfMesa: TTabItem;
    TabGrupo: TTabItem;
    GestureManager1: TGestureManager;
    TabProduto: TTabItem;
    TabMesasAbertas: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnVoltaMesa: TButton;
    ToolBar2: TToolBar;
    btnVoltaMGrupo: TButton;
    ToolBar4: TToolBar;
    Label5: TLabel;
    btnVoltaGrupo: TButton;
    ToolBar5: TToolBar;
    Label6: TLabel;
    btnVoltaAbetas: TButton;
    ListMenu: TListBox;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListLancaMesa: TListBoxItem;
    ListMesaAberta: TListBoxItem;
    ListResult: TListView;
    ToolBar6: TToolBar;
    lblGarcon: TLabel;
    Image2: TImage;
    TabConfig: TTabItem;
    ToolBar7: TToolBar;
    Label10: TLabel;
    lblMesaGrupo: TLabel;
    lblMesaProduto: TLabel;
    StyleGourmet: TStyleBook;
    TabProdutoResult: TTabControl;
    TabProdutoLista: TTabItem;
    TabProdutoObs: TTabItem;
    ListProdutoGrupo: TListView;
    ToolBar8: TToolBar;
    lblDescProdObs: TLabel;
    TabTransfMesa: TTabItem;
    ToolBar3: TToolBar;
    Label15: TLabel;
    btnVoltarTransMesa: TButton;
    Button1: TButton;
    pnlTransMesa: TPanel;
    Label3: TLabel;
    Label14: TLabel;
    edtMesaOrigem: TEdit;
    edtMesaDestino: TEdit;
    btnPesquisarMesa: TButton;
    btnTransTudo: TButton;
    ListItensTransMesa: TListView;
    TabMesaAbertasItens: TTabControl;
    TabMesaLista: TTabItem;
    TabMesaDetalhe: TTabItem;
    ListMesasAbertas: TListView;
    ToolBar9: TToolBar;
    btnVoltaMesasAbertas: TButton;
    ListMesaAbertaDetalhe: TListView;
    lblMesaAbertaLista: TLabel;
    TabVendaItem: TTabItem;
    ToolBar10: TToolBar;
    btnConfirmaItem: TButton;
    Label16: TLabel;
    ListVendaItem: TListView;
    ToolBar11: TToolBar;
    btnCancelaTudo: TButton;
    btnConfirmaObs: TButton;
    ToolBar12: TToolBar;
    btnVoltar: TButton;
    ToolBar13: TToolBar;
    Label17: TLabel;
    Label18: TLabel;
    btnProdutoLista: TButton;
    btnPesqCod: TButton;
    edtCodProd: TEdit;
    Label2: TLabel;
    pnlSabores: TPanel;
    Label19: TLabel;
    cmbQtdSabores: TComboBox;
    pnlFiltro: TPanel;
    Label4: TLabel;
    edtValorPesq: TEdit;
    btnPesqProd: TButton;
    btnLimpaPesq: TButton;
    TabInfoPeso: TTabItem;
    ToolBar14: TToolBar;
    lblProdutoDescPeso: TLabel;
    editPeso: TEdit;
    Label21: TLabel;
    btnConfrmaPeso: TButton;
    ListLavaJato: TListBoxItem;
    TabVeiculo: TTabItem;
    ToolBar15: TToolBar;
    Label23: TLabel;
    brnVoltaVeiculo: TButton;
    Layout1: TLayout;
    btnSalvaVeiculo: TButton;
    edtContato: TEdit;
    edtFone: TEdit;
    Label22: TLabel;
    Label24: TLabel;
    edtModelo: TEdit;
    edtPlaca: TEdit;
    Label20: TLabel;
    MODELO: TLabel;
    Button2: TButton;
    ListConsultarVeiculo: TListBoxItem;
    TabConsVeiculo: TTabItem;
    ToolBar16: TToolBar;
    Label25: TLabel;
    Button3: TButton;
    EdtPlacaPesq: TEdit;
    btnPesqVeiculo: TButton;
    ListItensVeiculo: TListView;
    Label26: TLabel;
    edtObsVenda: TEdit;
    rdbPerc: TRadioButton;
    rdbValor: TRadioButton;
    edtDesconto: TEdit;
    Label27: TLabel;
    btnSair: TButton;
    ListProducao: TListBoxItem;
    TabProducao: TTabItem;
    ListaProducaoCoz: TListView;
    ToolBar17: TToolBar;
    Label28: TLabel;
    btnCarregarProducao: TSpeedButton;
    btnConfig: TSpeedButton;
    Timer1: TTimer;
    Panel2: TPanel;
    Label7: TLabel;
    edtMesa: TEdit;
    btnConfirmar: TButton;
    Panel3: TPanel;
    Label11: TLabel;
    edtLocalServer: TEdit;
    Salvar: TButton;
    Layout2: TLayout;
    cmbObs: TComboBox;
    Label13: TLabel;
    edtObservacao: TEdit;
    ListObsProd: TListView;
    ToolBar18: TToolBar;
    Label12: TLabel;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    btnLogar: TButton;
    edtSenha: TEdit;
    Label9: TLabel;
    imgQrcod: TImage;
    BarcodeScanner: TBarcodeScanner;
    fgProgressDialog: TfgProgressDialog;
    fgActivityDialog: TfgActivityDialog;
    Label8: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    ListAgendaDia: TListBoxItem;
    TabIAgenda: TTabItem;
    ListAgenda: TListView;
    ToolBar19: TToolBar;
    Label29: TLabel;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ListLancaMesaClick(Sender: TObject);
    procedure ListMesaAbertaClick(Sender: TObject);
    procedure ListResultItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnLogarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure btnVoltaMesaClick(Sender: TObject);
    procedure btnVoltaPrecontaClick(Sender: TObject);
    procedure btnVoltaAbetasClick(Sender: TObject);
    procedure btnVoltaGrupoClick(Sender: TObject);
    procedure btnVoltaMGrupoClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnConfirmaObsClick(Sender: TObject);
    procedure btnPrecontaClick(Sender: TObject);
    procedure btnPesquisarMesaClick(Sender: TObject);
    procedure ListTransMesaClick(Sender: TObject);
    procedure btnTransTudoClick(Sender: TObject);
    procedure btnVoltaMesasAbertasClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnConfirmaItemClick(Sender: TObject);
    procedure btnCancelaTudoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnProdutoListaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbQtdSaboresChange(Sender: TObject);
    procedure btnPesqProdClick(Sender: TObject);
    procedure btnLimpaPesqClick(Sender: TObject);
    procedure ListMesasAbertasItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnPesqCodClick(Sender: TObject);
    procedure btnConfrmaPesoClick(Sender: TObject);
    procedure brnVoltaVeiculoClick(Sender: TObject);
    procedure btnSalvaVeiculoClick(Sender: TObject);
    procedure ListLavaJatoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnPesqVeiculoClick(Sender: TObject);
    procedure ListConsultarVeiculoClick(Sender: TObject);
    procedure edtPlacaExit(Sender: TObject);
    procedure btnVoltarTransMesaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnCarregarProducaoClick(Sender: TObject);
    procedure ListProducaoClick(Sender: TObject);
    procedure listGrupoItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure ListaProducaoCozItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Timer1Timer(Sender: TObject);
    procedure ListProdutoGrupoButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure ListVendaItemButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure ListItensTransMesaButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure ListObsProdItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure imgQrcodClick(Sender: TObject);
    procedure BarcodeScannerScanResult(Sender: TObject; AResult: string);
    procedure ListAgendaDiaClick(Sender: TObject);

  private
    { Private declarations }
    RegObservacao: array of TRegObservacao;

    procedure Login(senha: string);
    procedure AtualizaMesa(sMesa: string);
    procedure GetCarregaGrupos;
    procedure ListarMesasAbertas;
    procedure ListaAgenda;
    procedure GetProduto(idGrupo: string);
    procedure GetProdutoCodigo(Codproduto: string);
    procedure VoltarMenu;
    procedure GravaRegistro;
    function TiraAcentos(texto: string): String;
    procedure SetAdicionarObs(ID, Descricao: string);
    function GetObsProduto(Codproduto: string): Boolean;
    function GetAberturaCasa: Boolean;
    procedure GetBuscarItensMesa(sMesaOrigem: string);
    function IsRestauranteCasaAbertaMais24h: Boolean;
    procedure MSGShow(Msn: string);
    procedure MSGHide;
    function GetExistePreconta(NumMesa: string; IdAberturaCasa: string)
      : Boolean;
    function IsVariosSabores(idGrupo: string): Boolean;
    function IsCartaoValido(Cartao: string): Boolean;
    function ConsultaVeiculo(Placa: string): Boolean;
    procedure VerificarExistePlaca(Placa: string);
    procedure LimpaVeiculos;
    procedure CarregaGrupoFiltro;
    procedure GetCarregaProdutoProducao;
    Function AppBarcodeScanInstalado: Boolean;

  public
    { Public declarations }
  end;

var
  TabbedForm: TTabbedForm;
  USU_CODIGO: Integer;
  USU_LOGIN: string;
  IDEMPRESA: string;
  IDVENDEDOR: string;
  VENDA_IDCLIENTEPADRAO: string;
  QTDEPESSOA: Integer;
  IdAberturaCasa: string;
  MESAORIGEM: string;
  Mesa: string;
  ContSabor: Integer;
  IdGrupoProducao: string;

implementation

{$R *.fmx}

uses uDM, ToastClass, Loading;

{$IFDEF ANDROID}

function TTabbedForm.AppBarcodeScanInstalado: Boolean;
var

  Intent: JIntent;
  Info: JApplicationInfo;
begin

  Try

    Result := false;
    Info := SharedActivityContext.getPackageManager.getApplicationInfo
      (StringToJString('com.google.zxing.client.android'), 0);

    if Info.packageName.equals
      (StringToJString('com.google.zxing.client.android')) then
    Begin

      Result := true;

    End;

  Except
    on E: Exception do
    begin

      Try
        Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW);
        Intent.setData(TJnet_Uri.JavaClass.parse
          (StringToJString
          ('https://play.google.com/store/apps/details?id=com.google.zxing.client.android'))
          );
        Intent.setPackage(StringToJString('com.android.vending'));
        SharedActivity.startActivity(Intent);
        SharedActivity.finishActivity(0);
      Except
        ShowMessage('Erro ao abrir o Google Play !');
      End;
    End;

  end;

end;
{$ENDIF}

procedure TTabbedForm.AtualizaMesa(sMesa: string);
begin
  Mesa := sMesa;
  lblMesaGrupo.Text := 'Cart�o: ' + Mesa;
  lblMesaProduto.Text := lblMesaGrupo.Text;
  TabGourmet.ActiveTab := TabGrupo;
  // if StrToInt(edtPessoa.Text) > 0 then
  QTDEPESSOA := 1

end;

procedure TTabbedForm.BarcodeScannerScanResult(Sender: TObject;
  AResult: string);
begin
  edtMesa.Text := AResult;

  if trim(edtMesa.Text) <> EmptyStr then
    btnConfirmar.OnClick(Sender);

end;

procedure TTabbedForm.brnVoltaVeiculoClick(Sender: TObject);
begin
  VoltarMenu;
  LimpaVeiculos;
end;

procedure TTabbedForm.btnCancelaTudoClick(Sender: TObject);
begin
  MessageDlg('Deseja CANCELAR a inser��o dos item(s)?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const BotaoPressionado: TModalResult)
    begin
      case BotaoPressionado of
        mrYes:
          begin
            DMD.cdsVendaItem.EmptyDataSet;
            Toast('Item(s) excluidos');
            pnlSabores.Visible := false;
            ContSabor := 0;
            TabGourmet.ActiveTab := TabGrupo;
          end;
        mrNo:
          begin
            exit;
          end;
      end;
    end);

end;

procedure TTabbedForm.btnCarregarProducaoClick(Sender: TObject);
begin
  GetCarregaProdutoProducao;
end;

procedure TTabbedForm.btnConfigClick(Sender: TObject);
begin
  if TabGourmet.ActiveTab = TabLogin then
  begin
    edtLocalServer.Text := DMD.GetHost;
    TabGourmet.ActiveTab := TabConfig;
  end
  else
  begin
    TabGourmet.ActiveTab := TabMenu;
  end;
end;

procedure TTabbedForm.btnConfirmaItemClick(Sender: TObject);
begin
  GravaRegistro;
  pnlSabores.Visible := false;
  TabGourmet.ActiveTab := TabMenu;
end;

procedure TTabbedForm.btnConfirmaObsClick(Sender: TObject);
var
  Obs: string;
  QtdSabor: Integer;
  I: Integer;
begin
  I := 0;
  try
    // if cmbObs.ItemIndex = -1 then
    // begin
    // ShowMessage('Informe a observa��o fixa!');
    // exit;
    // end;

    DMD.cdsVendaItem.Insert;
    DMD.cdsVendaItemCODPRODUTO.AsInteger := DMD.cdsProdutoCODPRODUTO.AsInteger;
    DMD.cdsVendaItemDESC_COMPLETA.AsString :=
      DMD.cdsProdutoDESC_COMPLETA.AsString;
    DMD.cdsVendaItemIDCONSULTOR.AsString := IDVENDEDOR;

    if pnlSabores.Visible then
    begin
      DMD.cdsVendaItemQTD.AsFloat := (1 / (cmbQtdSabores.ItemIndex + 1));
      DMD.cdsVendaItemFLAG_SABOR.AsInteger := 1;
      inc(ContSabor);
    end
    else
    begin
      DMD.cdsVendaItemFLAG_SABOR.AsInteger := 0;
      DMD.cdsVendaItemQTD.AsFloat := 1;
    end;

    Obs := '';

    for I := 0 to ListObsProd.Items.Count - 1 do
    begin
      if ListObsProd.Items[I].Objects.AccessoryObject.Visible then
      begin
        if Obs = '' then
          Obs := Obs + ' ' + ListObsProd.Items[I].Text
        else
          Obs := Obs + ' , ' + ListObsProd.Items[I].Text;
      end;
    end;


    // ListObsProd.items[AItem.Index].Objects.AccessoryObject.Visible

    { if cmbObs.ItemIndex <> -1 then
      begin
      if RegObservacao[cmbObs.ItemIndex].Descricao <> EmptyStr then
      Obs := TiraAcentos(RegObservacao[cmbObs.ItemIndex].Descricao);
      end;
    }

    Obs := Obs + ' ' + edtObservacao.Text;

    DMD.cdsVendaItemDESCRICAO_COMPLEMENTAR.AsString := UpperCase(Obs);

    DMD.cdsVendaItem.Post;

    TabProdutoResult.ActiveTab := TabProdutoLista;
    Toast('adicionando ' + DMD.cdsProdutoDESC_COMPLETA.AsString);

  except
    on E: Exception do
    begin
      TabProdutoResult.ActiveTab := TabProdutoLista;
      Toast('Erro ao adicionar : ' + E.Message);
    end;
  end;
end;

procedure TTabbedForm.btnConfirmarClick(Sender: TObject);
var
  Cartao: Integer;
begin

  if trim(edtMesa.Text) = EmptyStr then
  begin
    ShowMessage('Informe o Cart�o !');
    exit;
  end;

  try
    Cartao := StrToInt(edtMesa.Text);
    edtMesa.Text := IntToStr(Cartao);
  except
    ShowMessage('Problema na leitura do cart�o!');
    exit;
  end;

  if not IsCartaoValido(edtMesa.Text) then
  begin
    ShowMessage('Eita o cart�o n�o foi registrado');
    exit;
  end;

  // if IsRestauranteCasaAbertaMais24h then
  // begin
  // ShowMessage
  // ('Casa aberta a mais de 24h proceda com o fechamento e a reabertura!');
  // exit;
  // end;

  // if DMD.cdsCasaAbertaMESAFINAL.AsInteger < StrToInt(edtMesa.Text) then
  // begin
  // ShowMessage('Cart�o informada n�o faz parte do intervalo ativo!');
  // exit;
  // end;

  // if GetExistePreconta(edtMesa.Text, IdAberturaCasa) then
  // begin
  // ShowMessage('Preconta foi emitida favor desbloquear!');
  // exit;
  // end;

  AtualizaMesa(edtMesa.Text);
  LimpaVeiculos;
end;

procedure TTabbedForm.btnConfrmaPesoClick(Sender: TObject);
begin
  try
    if editPeso.Text = EmptyStr then
    begin
      ShowMessage('Informe o Peso !');
      exit;
    end;

    if StrToFloat(editPeso.Text) <= 0 then
    begin
      ShowMessage('Informe o Peso !');
      exit;
    end;

    DMD.cdsVendaItem.Insert;
    DMD.cdsVendaItemCODPRODUTO.AsInteger := DMD.cdsProdutoCODPRODUTO.AsInteger;
    DMD.cdsVendaItemDESC_COMPLETA.AsString :=
      DMD.cdsProdutoDESC_COMPLETA.AsString;
    DMD.cdsVendaItemQTD.AsFloat := StrToFloat(editPeso.Text);

    DMD.cdsVendaItemIDCONSULTOR.AsString := IDVENDEDOR;
    DMD.cdsVendaItem.Post;

    Toast('Adicionando ' + DMD.cdsProdutoDESC_COMPLETA.AsString);
    TabProdutoResult.ActiveTab := TabProdutoLista;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao gravar item! ' + E.Message);
    end;
  end;
end;

procedure TTabbedForm.btnLogarClick(Sender: TObject);
begin
  try
    if trim(edtSenha.Text) = EmptyStr then
    begin
      ShowMessage('Informe a senha!');
      exit;
    end;
    // MSGShow('Verificando a senha informada....');
    Login(edtSenha.Text);
    /// MSGShow('Carregando o sistema, muita calma nessa hora....');
  finally
    // GetProduto('0');
    // MSGHide;
  end;

end;

procedure TTabbedForm.btnPesqCodClick(Sender: TObject);
var
  I: Integer;
begin
  if edtCodProd.Text = EmptyStr then
  begin
    ShowMessage('Informe o c�digo!');
    exit;
  end;
  try
    I := StrToInt(edtCodProd.Text);
  except
    on E: Exception do
      ShowMessage('N�o � numero!');
  end;

  GetProdutoCodigo(edtCodProd.Text);
end;

procedure TTabbedForm.btnPesqProdClick(Sender: TObject);
var
  LItem: TListViewItem;
  valor: Integer;
begin
  if trim(edtValorPesq.Text) <> EmptyStr then
  begin
    DMD.cdsProduto.Filtered := false;
    // if TryStrToInt(edtValorPesq.Text, valor) then
    // DMD.cdsProduto.Filter := 'CODPRODUTO=' + UpperCase(IntToStr(valor));
    /// /    else
    DMD.cdsProduto.Filter := 'DESC_COMPLETA LIKE ''%' +
      UpperCase(edtValorPesq.Text) + '%''';

    DMD.cdsProduto.Filtered := true;

    ListProdutoGrupo.Items.Clear;
    DMD.cdsProduto.First;
    while not DMD.cdsProduto.Eof do
    begin
      DMD.cdsProduto.Edit;
      DMD.cdsProdutoDESC_COMPLETA.AsString :=
        TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);

      LItem := ListProdutoGrupo.Items.Add;
      LItem.Text := TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
      LItem.Detail := 'Cod.: ' + DMD.cdsProdutoCODPRODUTO.AsString + ' Pre�o: '
        + DMD.cdsProdutoPRECO.AsString;

      if DMD.cdsProdutoFLAG_BALANCA.AsInteger = 1 then
        LItem.ButtonText := 'Peso'
      else
        LItem.ButtonText := ' + ';

      DMD.cdsProdutoID.AsInteger := LItem.Index;
      DMD.cdsProduto.Post;

      DMD.cdsProduto.Next;
    end;

    DMD.cdsProduto.Filtered := true;

  end
  else
  begin
    ShowMessage('Informe um valor na pesquisa!');
  end;

end;

procedure TTabbedForm.btnPesquisarMesaClick(Sender: TObject);
begin
  GetBuscarItensMesa(edtMesaOrigem.Text);
end;

procedure TTabbedForm.btnPesqVeiculoClick(Sender: TObject);
begin
  if trim(EdtPlacaPesq.Text) = '' then
  begin
    ShowMessage('Informe algum dados da placa!');
    exit;
  end;
  ConsultaVeiculo(EdtPlacaPesq.Text);
end;

procedure TTabbedForm.btnPrecontaClick(Sender: TObject);
var
  Retorno: string;
begin
  // preconta
  if trim(edtMesa.Text) = EmptyStr then
  begin
    ShowMessage('Informe o Cart�o !');
    exit;
  end;

  // if IsRestauranteCasaAbertaMais24h then
  // begin
  // ShowMessage
  // ('Casa aberta a mais de 24h proceda com o fechamento e a reabertura!');
  // exit;
  // end;

  // if DMD.cdsCasaAbertaMESAFINAL.AsInteger < StrToInt(edtMesa.Text) then
  // begin
  // ShowMessage('Mesa informada n�o faz parte do intervalo ativo!');
  // exit;
  // end;

  if trim(edtMesa.Text) <> EmptyStr then
  begin
    Toast('Aguarde');
    Retorno := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
      ':8085/datasnap/rest/TDMServerM/SetImprimePreconta/' + edtMesa.Text + '/'
      + IdAberturaCasa);
    Retorno := StringReplace(Retorno, '{"result":["', '', []);
    Retorno := StringReplace(Retorno, '"]}', '', []);
    Toast(Retorno, LongToast);

  end;

end;

procedure TTabbedForm.btnProdutoListaClick(Sender: TObject);
begin
  TabProdutoResult.ActiveTab := TabProdutoLista;
end;

procedure TTabbedForm.btnSairClick(Sender: TObject);
begin
  edtSenha.Text := '';
  TabGourmet.ActiveTab := TabLogin;
end;

procedure TTabbedForm.btnSalvaVeiculoClick(Sender: TObject);
begin
  if trim(edtPlaca.Text) = EmptyStr then
  begin
    ShowMessage('Informe a PLACA do veiculo!');
    exit;
  end;

  if trim(edtModelo.Text) = EmptyStr then
  begin
    ShowMessage('Informe o MODELO do veiculo!');
    exit;
  end;

  if trim(edtContato.Text) = EmptyStr then
  begin
    ShowMessage('Informe o CONTATO do veiculo!');
    exit;
  end;

  if trim(edtFone.Text) = EmptyStr then
  begin
    ShowMessage('Informe o FONE do veiculo!');
    exit;

  end;

  TabGourmet.ActiveTab := TabGrupo;

end;

procedure TTabbedForm.btnTransTudoClick(Sender: TObject);
var
  Retorno: string;
begin
  try
    if trim(edtMesaOrigem.Text) = EmptyStr then
    begin
      ShowMessage('Informe o cart�o de origem!');
      exit;
    end;

    if trim(edtMesaDestino.Text) = EmptyStr then
    begin
      ShowMessage('Informe o cart�o de destino!');
      exit;
    end;

    // if IsRestauranteCasaAbertaMais24h then
    // begin
    // ShowMessage
    // ('Casa aberta a mais de 24h proceda com o fechamento e a reabertura!');
    // exit;
    // end;

    if trim(edtMesaOrigem.Text) = trim(edtMesaDestino.Text) then
    begin
      ShowMessage('Informe Cart�o diferentes!');
      exit;
    end;

    if MESAORIGEM = trim(edtMesaDestino.Text) then
    begin
      ShowMessage('Informe Cart�o diferentes!');
      exit;
    end;

    // if GetExistePreconta(edtMesaOrigem.Text, IdAberturaCasa) then
    // begin
    // ShowMessage('Preconta foi emitida favor desbloquear!');
    // exit;
    // end;

    // if GetExistePreconta(edtMesaDestino.Text, IdAberturaCasa) then
    // begin
    // ShowMessage('Preconta foi emitida favor desbloquear!');
    // exit;
    // end;

    try
      MSGShow('Tranferindo os produtos.....');
      if not DMD.cdsPreContaDetalhe.IsEmpty then
      begin
        DMD.cdsPreContaDetalhe.First;

        while not DMD.cdsPreContaDetalhe.Eof do
        begin
          Retorno := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
            ':8085/datasnap/rest/TDMServerM/SetRestauranteTransfereProduto/' +
            DMD.cdsPreContaDetalheIDVENDAITEM.AsString + '/' +
            DMD.cdsCasaAbertaIDABERTURACASA.AsString + '/' + edtMesaDestino.Text
            + '/' + IntToStr(USU_CODIGO) + '/' + USU_LOGIN + '/' + IDEMPRESA);

          DMD.cdsPreContaDetalhe.Next;
        end;
        ListItensTransMesa.Items.Clear;
        Toast('Transfer�ncia realizada com sucesso');
      end
      else
      begin
        Toast('Sem registro para realizar opera��o');
      end;
    finally
      MSGHide;

    end;
  except
    on E: Exception do
    begin
      MSGHide;
      ShowMessage('Problema ao transferir os produtos!');
    end;
  end;
end;

procedure TTabbedForm.btnVoltaAbetasClick(Sender: TObject);
begin
  VoltarMenu;
end;

procedure TTabbedForm.btnVoltaGrupoClick(Sender: TObject);
var
  LItem: TListViewItem;
begin
  // GravaRegistro;
  if TabProdutoResult.ActiveTab = TabProdutoObs then
  begin
    ShowMessage('Confirme a Observa��o primeiro!');
    exit;
  end;

  if TabProdutoResult.ActiveTab = TabVendaItem then
  begin
    ShowMessage('Confirme ou cancele a opera��o!');
    exit;
  end;

  if not DMD.cdsVendaItem.IsEmpty then
  begin

    ListVendaItem.Items.Clear;
    DMD.cdsVendaItem.First;
    while not DMD.cdsVendaItem.Eof do
    begin
      DMD.cdsVendaItem.Edit;
      LItem := ListVendaItem.Items.Add;
      LItem.Text := DMD.cdsVendaItemDESC_COMPLETA.AsString;
      LItem.Detail := 'Qtd: ' + FormatFloat('###,##0.00',
        DMD.cdsVendaItemQTD.AsFloat) + ' Obs: ' +
        DMD.cdsVendaItemDESCRICAO_COMPLEMENTAR.AsString;
      LItem.ButtonText := 'Excluir';
      DMD.cdsVendaItemID.AsInteger := LItem.Index;
      DMD.cdsVendaItem.Post;
      DMD.cdsVendaItem.Next;
    end;

  end;

  TabProdutoResult.ActiveTab := TabVendaItem;
end;

procedure TTabbedForm.btnVoltaMesaClick(Sender: TObject);
begin
  VoltarMenu;
end;

procedure TTabbedForm.btnVoltaMesasAbertasClick(Sender: TObject);
begin
  TabMesaAbertasItens.ActiveTab := TabMesaLista;
end;

procedure TTabbedForm.btnVoltaMGrupoClick(Sender: TObject);
begin
  TabGourmet.ActiveTab := TabLogin;
end;

procedure TTabbedForm.btnVoltaPrecontaClick(Sender: TObject);
begin
  VoltarMenu;
end;

procedure TTabbedForm.btnVoltarClick(Sender: TObject);
begin
  // colcoar
  edtCodProd.Text := EmptyStr;
  TabGourmet.ActiveTab := TabGrupo;
  DMD.cdsProduto.Filtered := false;
end;

procedure TTabbedForm.btnVoltarTransMesaClick(Sender: TObject);
begin
  VoltarMenu;
end;

procedure TTabbedForm.Button2Click(Sender: TObject);
begin
  edtCodProd.Text := EmptyStr;
  TabGourmet.ActiveTab := TabGrupo;
  DMD.cdsProduto.Filtered := false;
end;

procedure TTabbedForm.Button4Click(Sender: TObject);
begin
  // CarregaGrupoFiltro;
end;

procedure TTabbedForm.CarregaGrupoFiltro;
begin
  // if DMD.GetHost <> EmptyStr then
  // begin
  // DMD.JSONToClientDataSet(DMD.cdsGrupo, 'GetJSONListaGrupo', '');
  // if not DMD.cdsGrupo.IsEmpty then
  // begin
  // DMD.cdsGrupo.First;
  // while not DMD.cdsGrupo.Eof do
  // begin
  // DMD.cdsGrupo.Edit;
  // DMD.cdsGrupoDESC_GRUPO.AsString :=
  // TiraAcentos(DMD.cdsGrupoDESC_GRUPO.AsString);
  // DMD.cdsGrupo.Post;
  //
  // listGrupo.Items.Add(DMD.cdsGrupoDESC_GRUPO.AsString);
  // DMD.cdsGrupo.Next;
  // end;
  // end;
  // end
  // else
  // begin
  // ShowMessage('Configure o endere�o do servidor!');
  // end;
end;

procedure TTabbedForm.btnLimpaPesqClick(Sender: TObject);
// var
// LItem: TListViewItem;
// idGrupo: string;
begin
  { idGrupo := DMD.cdsProdutoIDGRUPO.AsString;

    if idGrupo <> EmptyStr then
    begin
    DMD.cdsProduto.Filtered := false;
    DMD.cdsProduto.Filter := 'IDGRUPO = ' + QuotedStr(idGrupo);
    end
    else
    begin
    DMD.cdsProduto.Filtered := false;
    DMD.cdsProduto.Filter := '';
    end;
    edtValorPesq.Text := EmptyStr;

    ListProdutoGrupo.Items.Clear;
    DMD.cdsProduto.First;
    while not DMD.cdsProduto.Eof do
    begin
    DMD.cdsProduto.Edit;
    DMD.cdsProdutoDESC_COMPLETA.AsString :=
    TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
    DMD.cdsProduto.Post;

    LItem := ListProdutoGrupo.Items.Add;
    LItem.Text := TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
    LItem.Detail := 'Cod.: ' + DMD.cdsProdutoCODPRODUTO.AsString + ' Pre�o: ' +
    DMD.cdsProdutoPRECO.AsString;
    LItem.ButtonText := '+';
    DMD.cdsProduto.Next;
    end;
  }
  edtValorPesq.Text := EmptyStr;
  TabGourmet.ActiveTab := TabGrupo;
end;

procedure TTabbedForm.cmbQtdSaboresChange(Sender: TObject);
begin
  try
    if not DMD.cdsVendaItem.IsEmpty then
    begin
      DMD.cdsVendaItem.Filtered := false;
      DMD.cdsVendaItem.Filter := 'FLAG_SABOR = 1';
      DMD.cdsVendaItem.Filtered := true;
      if (cmbQtdSabores.ItemIndex + 1) < DMD.cdsVendaItem.RecordCount then
      begin
        ShowMessage
          ('Sabores lan�ados � maoir que a quantidade de sabor escolhida, proceda com a exclus�o dos itens excedente!');
        exit;
      end;
      DMD.cdsVendaItem.First;
      while not DMD.cdsVendaItem.Eof do
      begin
        DMD.cdsVendaItem.Edit;
        DMD.cdsVendaItemQTD.AsFloat := (1 / (cmbQtdSabores.ItemIndex + 1));
        DMD.cdsVendaItem.Post;
        DMD.cdsVendaItem.Next;
      end;
      DMD.cdsVendaItem.Filtered := false;
    end;
  except
    on E: Exception do
    begin
      DMD.cdsVendaItem.Filtered := false;
    end;
  end;

end;

function TTabbedForm.ConsultaVeiculo(Placa: string): Boolean;
var
  Parans: string;
  LItem: TListViewItem;
begin
  try
    MSGShow('Buscando Dados.....');
    Parans := Placa + '/' + IDEMPRESA;
    DMD.JSONToClientDataSet(DMD.cdsVendaVeiculo,
      'GetJSONConsultaVeiculoPlaca', Parans);

    if not DMD.cdsVendaVeiculo.IsEmpty then
    begin
      ListItensVeiculo.Items.Clear;

      DMD.cdsVendaVeiculo.First;
      while not DMD.cdsVendaVeiculo.Eof do
      begin

        DMD.cdsVendaVeiculo.Edit;
        DMD.cdsVendaVeiculoNOMEPRODUTO.AsString :=
          TiraAcentos(DMD.cdsVendaVeiculoNOMEPRODUTO.AsString);
        DMD.cdsVendaVeiculo.Post;

        LItem := ListItensVeiculo.Items.Add;
        LItem.Text := TiraAcentos(DMD.cdsVendaVeiculoNOMEPRODUTO.AsString);
        LItem.Detail := 'Cod.Produto: ' + DMD.cdsVendaVeiculoCODPRODUTO.AsString
          + ' Placa: ' + DMD.cdsVendaVeiculoVEICULO_PLACA.AsString;

        DMD.cdsVendaVeiculo.Next;
      end;
    end
    else
    begin
      ShowMessage('N�o existe registro!');
    end;
  finally
    MSGHide;
  end;

end;

procedure TTabbedForm.edtPlacaExit(Sender: TObject);
begin
  if (trim(edtPlaca.Text) <> EmptyStr) and (trim(edtModelo.Text) = EmptyStr) and
    (trim(edtFone.Text) = EmptyStr) then
  begin
    VerificarExistePlaca(trim(edtPlaca.Text));
  end;
end;

procedure TTabbedForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  if DMD.GetHost = EmptyStr then
    TabGourmet.ActiveTab := TabConfig
  else
    TabGourmet.ActiveTab := TabLogin;

  edtObservacao.MaxLength := 200;
end;

procedure TTabbedForm.FormGesture(Sender: TObject;
const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
{$IFDEF ANDROID}
  // case EventInfo.GestureID of
  // sgiLeft:
  // begin
  // if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1]
  // then
  // TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
  // Handled := True;
  // end;
  //
  // sgiRight:
  // begin
  // if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
  // TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
  // Handled := True;
  // end;
  // end;
{$ENDIF}
end;

procedure TTabbedForm.FormKeyUp(Sender: TObject; var Key: Word;
var KeyChar: Char; Shift: TShiftState);
var
  Fechar: Boolean;
begin
  if Key = vkHardwareBack then
  begin
    case TabGourmet.TabIndex of
      1:
        begin
          Key := 0;
          MessageDlg('Deseja sair da aplica��o?',
            System.UITypes.TMsgDlgType.mtInformation,
            [System.UITypes.TMsgDlgBtn.mbYes,
            System.UITypes.TMsgDlgBtn.mbNo], 0,
            procedure(const BotaoPressionado: TModalResult)
            begin
              case BotaoPressionado of
                mrYes:
                  begin
                    SharedActivity.Finish;
                  end;
                mrNo:
                  begin
                    TabGourmet.TabIndex := 1;
                  end;
              end;
            end);

        end;

      7:
        begin
          Key := 0;
          MessageDlg('Deseja sair da aplica��o?',
            System.UITypes.TMsgDlgType.mtInformation,
            [System.UITypes.TMsgDlgBtn.mbYes,
            System.UITypes.TMsgDlgBtn.mbNo], 0,
            procedure(const BotaoPressionado: TModalResult)
            begin
              case BotaoPressionado of
                mrYes:
                  begin
                    SharedActivity.Finish;
                  end;
                mrNo:
                  begin
                    exit;
                  end;
              end;
            end);

        end;

      3, 4, 5:
        begin
          Key := 0;
          TabGourmet.TabIndex := 1;
        end;

    end;

  end;
end;

procedure TTabbedForm.FormShow(Sender: TObject);
begin
  pnlSabores.Visible := false;
  TabGourmet.TabPosition := TTabPosition.None;
  // TabGourmet.TabPosition :
end;

procedure TTabbedForm.GetCarregaGrupos;
var
  LItem: TListViewItem;
begin
  try
    DMD.JSONToClientDataSet(DMD.cdsGrupo, 'GetJSONListaGrupo', '');
    ListResult.Items.Clear;
    if not DMD.cdsGrupo.IsEmpty then
    begin
      DMD.cdsGrupo.First;
      while not DMD.cdsGrupo.Eof do
      begin

        LItem := ListResult.Items.Add;
        LItem.Text := DMD.cdsGrupoDESC_GRUPO.AsString;
        LItem.Detail := DMD.cdsGrupoIDGRUPO.AsString;

        DMD.cdsGrupo.Next;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Problema ao carregar grupo : ' + E.Message);
    end;
  end;

end;

procedure TTabbedForm.GetCarregaProdutoProducao;
var
  idGrupo: string;
  LItem: TListViewItem;
begin
  try
    try
      MSGShow('Buscando item(s) para produ��o....');
      ListaProducaoCoz.BeginUpdate;
      idGrupo := DMD.GetIdGrupo;
      ListaProducaoCoz.Items.Clear;
      if (DMD.GetHost <> EmptyStr) and (idGrupo <> EmptyStr) then
      begin
        DMD.JSONToClientDataSet(DMD.cdsProdutoProducao,
          'GetJSONListaProducaoCozinha', IdAberturaCasa + '/' + idGrupo);
        if not DMD.cdsProdutoProducao.IsEmpty then
        begin
          DMD.cdsProdutoProducao.First;
          while not DMD.cdsProdutoProducao.Eof do
          begin
            LItem := ListaProducaoCoz.Items.Add;
            LItem.Text := DMD.cdsProdutoProducaoNOMEPRODUTO.AsString + ' QTDE: '
              + DMD.cdsProdutoProducaoQUANTIDADE.AsString;
            LItem.Data[TMultiDetailAppearanceNames.Detail1] := 'C�digo: ' +
              DMD.cdsProdutoProducaoCOD_DAV_PREVENDA.AsString + ' Cart�o: ' +
              DMD.cdsProdutoProducaoNUM_MESA.AsString;

            LItem.Data[TMultiDetailAppearanceNames.Detail2] := 'Hora: ' +
              DMD.cdsProdutoProducaoHORA_EMISSAO.AsString + ' Operador : ' +
              DMD.cdsProdutoProducaoGARCOM.AsString;

            LItem.Data[TMultiDetailAppearanceNames.Detail3] :=
              DMD.cdsProdutoProducaoIDVENDA.AsString + '|' +
              DMD.cdsProdutoProducaoCODPRODUTO.AsString;

            // LItem.Detail := 'C�digo: ' + DMD.cdsProdutoProducaoCOD_DAV_PREVENDA.
            // AsString + ' Mesa: ' + DMD.cdsProdutoProducaoNUM_MESA.AsString +
            // ' Hora: ' + DMD.cdsProdutoProducaoHORA_EMISSAO.AsString;

            DMD.cdsProdutoProducao.Next;
          end;
        end
        else
        begin
          MSGHide;
          Toast('N�o foi encontrado nenhum registro!');
        end;

      end
      else
      begin
        ShowMessage('Configure o endere�o do servidor!');
      end;
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;

  finally
    ListaProducaoCoz.EndUpdate;
    MSGHide;
  end;

end;

function TTabbedForm.GetExistePreconta(NumMesa, IdAberturaCasa: string)
  : Boolean;
var
  valor: string;
begin
  { "result":[true] }
  valor := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
    ':8085/datasnap/rest/TDMServerM/GetVerificaStatusPreconta/' + NumMesa + '/'
    + IdAberturaCasa);
  valor := StringReplace(valor, '{"result":[', '', []);
  valor := StringReplace(valor, ']}', '', []);

  Result := StrToBool(valor);

end;

function TTabbedForm.GetAberturaCasa: Boolean;
begin
  DMD.JSONToClientDataSet(DMD.cdsCasaAberta, 'GetRestauranteCasaAberta',
    IDEMPRESA);
  Result := not DMD.cdsCasaAberta.IsEmpty;
end;

procedure TTabbedForm.GetBuscarItensMesa(sMesaOrigem: string);
var
  LItem: TListViewItem;
begin
  try
    try
      if trim(sMesaOrigem) = EmptyStr then
      begin
        ShowMessage('Informe o cart�o de Origem para buscar os itens!');
        exit;
      end
      else
      begin
        MSGShow('Buscando informa��es do cart�o.. Aguarde...');

        ListItensTransMesa.Items.Clear;

        DMD.JSONToClientDataSet(DMD.cdsPreConta,
          'GetJSONListaPreContaCabecalho', IDEMPRESA + '/' +
          sMesaOrigem + '/1');

        MESAORIGEM := sMesaOrigem;

        if not DMD.cdsPreConta.IsEmpty then
        begin

          DMD.JSONToClientDataSet(DMD.cdsPreContaDetalhe,
            'GetJSONListaPreContaDetalhe', DMD.cdsPreContaIDVENDA.AsString);

          DMD.cdsPreContaDetalhe.First;
          while not DMD.cdsPreContaDetalhe.Eof do
          begin
            LItem := ListItensTransMesa.Items.Add;
            LItem.Text := DMD.cdsPreContaDetalheDESC_COMPLETA.AsString;
            LItem.Detail := 'Qtd: ' + DMD.cdsPreContaDetalheQTD.AsString + ' X '
              + DMD.cdsPreContaDetalheVALOR_UNITARIO.AsString + ' = ' +
              DMD.cdsPreContaDetalheVALOR_LIQUIDO.AsString;
            DMD.cdsPreContaDetalhe.Edit;
            DMD.cdsPreContaDetalheID.AsInteger := LItem.Index;
            DMD.cdsPreContaDetalhe.Post;

            DMD.cdsPreContaDetalhe.Next;
          end;
          btnTransTudo.Visible := true;
        end
        else
        begin
          MSGHide;
          btnTransTudo.Visible := false;
          ShowMessage('N�o foi encontrado lan�amentos para esse Cart�o!');
        end;

      end;
    finally
      MSGHide;
    end;
  except
    on E: Exception do
    begin
      MSGHide;
      MESAORIGEM := '';
      ShowMessage('Problema pesquisar cart�es! ' + E.Message);
    end;
  end;

end;

function TTabbedForm.GetObsProduto(Codproduto: string): Boolean;
var
  LItems: TListViewItem;

begin
  DMD.JSONToClientDataSet(DMD.cdsProdutoObs, 'GetJSONProdutoObservacao',
    Codproduto);
  edtObservacao.Text := '';
  cmbObs.ItemIndex := -1;

  if not DMD.cdsProdutoObs.IsEmpty then
  begin
    lblDescProdObs.Text := DMD.cdsProdutoDESC_COMPLETA.AsString;
    cmbObs.Items.Clear;
    ListObsProd.Items.Clear;
    DMD.cdsProdutoObs.First;
    while not DMD.cdsProdutoObs.Eof do
    begin
      // showmessage(DMD.cdsProdutoObsOBSERVACOES.AsString);
      LItems := ListObsProd.Items.Add;
      LItems.Text := TiraAcentos(DMD.cdsProdutoObsOBSERVACOES.AsString);
      LItems.Objects.AccessoryObject.Visible := false;

      cmbObs.Items.Add(DMD.cdsProdutoObsOBSERVACOES.AsString);
      // SetAdicionarObs(DMD.cdsProdutoObsIDPRODUTOOBSERVACOES.AsString,DMD.cdsProdutoObsOBSERVACOES.AsString);
      DMD.cdsProdutoObs.Next;
    end;
    Result := true;
  end
  else
  begin
    lblDescProdObs.Text := '';
    Result := false;
  end;

end;

procedure TTabbedForm.GetProduto(idGrupo: string);
begin
  try

    DMD.cdsProduto.IndexFieldNames := 'DESC_COMPLETA';
    DMD.JSONToClientDataSet(DMD.cdsProduto, 'GetJSONProdutoGrupo', '0');

    if DMD.cdsProduto.IsEmpty then
    begin
      Toast('N�o existe produto!', LongToast);
      { ListProdutoGrupo.Items.Clear;
        DMD.cdsProduto.First;
        while not DMD.cdsProduto.Eof do
        begin
        DMD.cdsProduto.Edit;
        DMD.cdsProdutoDESC_COMPLETA.AsString :=
        TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);

        LItems := ListProdutoGrupo.Items.Add;
        LItems.Text := TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
        LItems.Detail := 'Cod.: ' + DMD.cdsProdutoCODPRODUTO.AsString +
        ' Pre�o: ' + DMD.cdsProdutoPRECO.AsString;

        if DMD.cdsProdutoFLAG_BALANCA.AsInteger = 1 then
        LItems.ButtonText := 'Peso'
        else
        LItems.ButtonText := '+';
        DMD.cdsProdutoID.AsInteger := LItems.Index;
        DMD.cdsProduto.Post;
        DMD.cdsProduto.Next;
        end;

        // if IsVariosSabores(idGrupo) then
        // pnlSabores.Visible := true
        // else
        // pnlSabores.Visible := false;
      }
    end;
    // else
    // begin

    // end;
  finally

  end;

end;

procedure TTabbedForm.GetProdutoCodigo(Codproduto: string);
var
  LItem: TListViewItem;
begin
  try
    DMD.cdsProduto.Filtered := false;
    DMD.cdsProduto.Filter := 'CODPRODUTO = ' + Codproduto;
    DMD.cdsProduto.Filtered := true;
    MSGShow('Buscando produto.....');
    // DMD.JSONToClientDataSet(DMD.cdsProduto, 'GetJSONProdutoCodigo', Codproduto);

    if not DMD.cdsProduto.IsEmpty then
    begin
      ListProdutoGrupo.Items.Clear;

      DMD.cdsProduto.First;
      while not DMD.cdsProduto.Eof do
      begin

        DMD.cdsProduto.Edit;
        DMD.cdsProdutoDESC_COMPLETA.AsString :=
          TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
        // DMD.cdsProduto.Post;

        LItem := ListProdutoGrupo.Items.Add;
        LItem.Text := TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
        LItem.Detail := 'Cod.: ' + DMD.cdsProdutoCODPRODUTO.AsString +
          ' Pre�o: ' + DMD.cdsProdutoPRECO.AsString;
        LItem.ButtonText := '+';

        DMD.cdsProdutoID.AsInteger := LItem.Index;
        DMD.cdsProduto.Post;

        DMD.cdsProduto.Next;
      end;

      TabGourmet.ActiveTab := TabProduto;

      TabProdutoResult.ActiveTab := TabProdutoLista;
    end
    else
    begin
      ShowMessage('N�o existe produto para grupo selecionado!');
    end;
  finally
    MSGHide;
  end;

end;

procedure TTabbedForm.GravaRegistro;
var
  sResult_Get: string;
  arrJSON: TJSONArray;
  objJSON: TJSONObject;
  iCont: Integer;
  Detalhe: string;
  sLink: string;
  sImprime: string;
  TipoDesc: Integer;
  Host: string;
begin
  try
    try
      // MSGShow('Gravando dados no servidor....');

      if not DMD.cdsVendaItem.IsEmpty then
      begin

        DMD.cdsVendaItem.Filtered := false;
        DMD.cdsVendaItem.Filter := 'FLAG_SABOR = 1';
        DMD.cdsVendaItem.Filtered := true;
        if DMD.cdsVendaItem.RecordCount > 0 then
        begin
          DMD.cdsVendaItem.First;
          while not DMD.cdsVendaItem.Eof do
          begin
            DMD.cdsVendaItem.Edit;
            DMD.cdsVendaItemQTD.AsFloat := (1 / DMD.cdsVendaItem.RecordCount);
            DMD.cdsVendaItem.Post;
            DMD.cdsVendaItem.Next;
          end;
          DMD.cdsVendaItem.Filtered := false;
        end;
        DMD.cdsVendaItem.Filtered := false;

        arrJSON := TJSONArray.Create;
        DMD.cdsVendaItem.First;
        while not DMD.cdsVendaItem.Eof do
        begin
          objJSON := TJSONObject.Create;
          for iCont := 0 to DMD.cdsVendaItem.FieldCount - 1 do
            objJSON.AddPair(TJSONPair.Create(DMD.cdsVendaItem.Fields[iCont]
              .FieldName, TiraAcentos(DMD.cdsVendaItem.Fields[iCont]
              .AsString)));
          arrJSON.AddElement(objJSON);

          DMD.cdsVendaItem.Next;
        end;
        Detalhe := arrJSON.ToString;

        if Mesa = EmptyStr then
          Mesa := '0';

        TipoDesc := 0;

        if rdbPerc.IsChecked then
          TipoDesc := 1;

        if rdbValor.IsChecked then
          TipoDesc := 2;


        // ShowMessage('http://' + DMD.GetHost +
        // ':8085/datasnap/rest/TDMServerM/SetJSONAddVendaRestaurante/' + Mesa + '/' +
        // IntToStr(QTDEPESSOA) + '/' + IDEMPRESA + '/' + Detalhe + '/' +
        // IntToStr(USU_CODIGO) + '/' + USU_LOGIN + '/' +
        // UpperCase(edtPlaca.Text) + '/' + UpperCase(edtModelo.Text) + '/'
        // + edtFone.Text + '/' + UpperCase(edtContato.Text) + '/' +
        // UpperCase(edtObsVenda.Text) + '/' + IntToStr(TipoDesc) + '/' +
        // edtDesconto.Text);

        // ShowMessage('http://' + Host +
        // ':8085/datasnap/rest/TDMServerM/SetJSONAddVendaRestaurante/' + Mesa +
        // '/' + IntToStr(QTDEPESSOA) + '/' + IDEMPRESA + '/' + Detalhe + '/' +
        // IntToStr(USU_CODIGO) + '/' + USU_LOGIN + '/' +
        // UpperCase(edtPlaca.Text) + '/' + UpperCase(edtModelo.Text) + '/' +
        // edtFone.Text + '/' + UpperCase(edtContato.Text) + '/' +
        // UpperCase(edtObsVenda.Text) + '/' + IntToStr(TipoDesc) + '/' +
        // edtDesconto.Text+'/1');
        //
        // Toast('depois do show');

        Host := DMD.GetHost;
        sResult_Get := DMD.IdHTTP1.Get('http://' + Host +
          ':8085/datasnap/rest/TDMServerM/SetJSONAddVendaRestaurante/' + Mesa +
          '/' + IntToStr(QTDEPESSOA) + '/' + IDEMPRESA + '/' + Detalhe + '/' +
          IntToStr(USU_CODIGO) + '/' + USU_LOGIN + '/' +
          UpperCase(edtPlaca.Text) + '/' + UpperCase(edtModelo.Text) + '/' +
          edtFone.Text + '/' + UpperCase(edtContato.Text) + '/' +
          UpperCase(edtObsVenda.Text) + '/' + IntToStr(TipoDesc) + '/0/1');

        // DMD.cdsProduto.EmptyDataSet;
        DMD.cdsVendaItem.EmptyDataSet;
        ListVendaItem.Items.Clear;

      end;
    finally
      // MSGHide;
      edtMesa.Text := '';
      lblMesaProduto.Text := 'CART�O : 0';
      lblMesaGrupo.Text := 'CART�O : 0';
      Mesa := '0';
      DMD.cdsVendaItem.Filtered := false;
      ContSabor := 0;
      Toast('Registro gravado com sucesso!', ShortToast);
      LimpaVeiculos;

      { MessageDlg('Deseja lan�ar mais ?',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
        procedure(const BotaoPressionado: TModalResult)
        begin
        case BotaoPressionado of
        mrYes:
        begin
        TabGourmet.TabIndex := 1;
        end;
        mrNo:
        begin
        TabGourmet.TabIndex := 0;
        edtSenha.Text := '';
        end;
        end;
        end); }

    end;

  except
    on E: Exception do
    begin
      MSGHide;

      ShowMessage('Erro ao gravar registro :' + E.Message);
    end;
  end;
end;

procedure TTabbedForm.imgQrcodClick(Sender: TObject);
begin

{$IFDEF ANDROID}
  if AppBarcodeScanInstalado then
    BarcodeScanner.Scan;

{$ENDIF}
end;

function TTabbedForm.IsCartaoValido(Cartao: string): Boolean;
var
  valor: string;
begin
  { "result":[true] }
  valor := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
    ':8085/datasnap/rest/TDMServerM/IsCartaoValido/' + Cartao);
  valor := StringReplace(valor, '{"result":[', '', []);
  valor := StringReplace(valor, ']}', '', []);

  Result := StrToInt(valor) = 1;

end;

function TTabbedForm.IsRestauranteCasaAbertaMais24h: Boolean;
var
  sDateTime: string;
begin
  Result := false;
  sDateTime := DMD.cdsCasaAbertaDATAABERTURA.AsString + ' ' +
    DMD.cdsCasaAbertaHORAABERTURA.AsString;

  Result := false;
  // HoursBetween(now, StrToDateTime(sDateTime)) > 24;

end;

function TTabbedForm.IsVariosSabores(idGrupo: string): Boolean;
var
  valor: string;
begin
  { "result":[true] }
  valor := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
    ':8085/datasnap/rest/TDMServerM/IsVariosSabores/' + idGrupo);
  valor := StringReplace(valor, '{"result":[', '', []);
  valor := StringReplace(valor, ']}', '', []);

  Result := StrToInt(valor) = 1;

end;

procedure TTabbedForm.LimpaVeiculos;
begin
  edtPlaca.Text := '';
  edtModelo.Text := '';
  edtFone.Text := '';
  edtContato.Text := '';
  edtObsVenda.Text := '';
  edtDesconto.Text := '';
end;

procedure TTabbedForm.ListaAgenda;
var
  LItem: TListViewItem;
  HoraIni: TDateTime;
begin
  try

    TLoading.Show(TabbedForm, 'Aguarde, carregando sua agenda...');

    TThread.CreateAnonymousThread(
      procedure
      begin

        DMD.JSONToClientDataSet(DMD.cdsAgenda, 'GetJSONListaAgendaDia',
          IDVENDEDOR);

        ListAgenda.Items.Clear;

        if not DMD.cdsAgenda.IsEmpty then
        begin

          DMD.cdsAgenda.First;
          while not DMD.cdsAgenda.Eof do
          begin

            LItem := ListAgenda.Items.Add;
            LItem.Text := DMD.cdsAgendaNOMECLIENTE.AsString;

            LItem.Detail := 'Data : ' + DMD.cdsAgendaDATAAGENDA.AsString +
              ' Hora: ' + DMD.cdsAgendaHORA.AsString;

            if DMD.cdsAgendaSTATUS.AsInteger > 0 then
              LItem.Objects.AccessoryObject.Visible := true
            else
              LItem.Objects.AccessoryObject.Visible := false;

            DMD.cdsAgenda.Next;
          end;
        end;
        TThread.Synchronize(nil,
          procedure
          begin
            TLoading.Hide;
          end);

      end).Start;

  except
    on E: Exception do
    begin
      MSGHide;
      ShowMessage('Problema ao carregar grupo : ' + E.Message);
    end;
  end;

end;

procedure TTabbedForm.ListAgendaDiaClick(Sender: TObject);
begin
  ListaAgenda;
  TabGourmet.ActiveTab := TabIAgenda;
end;

procedure TTabbedForm.ListaProducaoCozItemClick(const Sender: TObject;
const AItem: TListViewItem);
var
  Parte: TStringList;
begin
  try
    Parte := TStringList.Create;
    Parte.Delimiter := '|';
    Parte.DelimitedText := AItem.Data
      [TMultiDetailAppearanceNames.Detail3].AsString;

    AItem.Objects.AccessoryObject.Visible := false;

    if DMD.cdsProdutoProducao.Locate('IDVENDA;CODPRODUTO',
      VarArrayOf([Parte[0], Parte[1]]), []) then
    begin
      DMD.IdHTTP1.Get('http://' + DMD.GetHost +
        ':8085/datasnap/rest/TDMServerM/SetJSONListaProducaoOK/' +
        DMD.cdsProdutoProducaoIDVENDA.AsString + '/' +
        DMD.cdsProdutoProducaoCODPRODUTO.AsString);

      Toast('Finalizando a produ��o do Item: ' +
        DMD.cdsProdutoProducaoNOMEPRODUTO.AsString);

    end;
  finally
    FreeAndNil(Parte);
    // GetCarregaProdutoProducao;
  end;

end;

procedure TTabbedForm.ListarMesasAbertas;
var
  LItem: TListViewItem;
  HoraIni: TDateTime;
begin
  try

    try

      MSGShow('Carregando os cart�es! Aguade por favor....');
      DMD.JSONToClientDataSet(DMD.cdsMesasAbertas,
        'GetJSONListaMesaContaAbertas', IDEMPRESA + '/1');

      ListMesasAbertas.Items.Clear;

      DMD.cdsTempListaMesa.EmptyDataSet;

      if not DMD.cdsMesasAbertas.IsEmpty then
      begin

        DMD.cdsMesasAbertas.First;
        while not DMD.cdsMesasAbertas.Eof do
        begin
          HoraIni := StrToTime(DMD.cdsMesasAbertasHORA_EMISSAO.AsString);

          LItem := ListMesasAbertas.Items.Add;
          LItem.Text := 'Cart�o : ' + FormatFloat('000',
            DMD.cdsMesasAbertasNUM_MESA.AsFloat) + ' - ' +
            DMD.cdsMesasAbertasNOME_PESSOA.AsString;

          LItem.Detail := 'Perman�ncia : ' + FormatDateTime('hh:nn',
            (Time - HoraIni)) + '   Total :' +
            DMD.cdsMesasAbertasTOTAL_LIQUIDO.AsString + ' Qtd Itens : ' +
            DMD.cdsMesasAbertasQTD_ITEM.AsString;

          DMD.cdsTempListaMesa.Insert;
          DMD.cdsTempListaMesaID.AsInteger := LItem.Index;
          DMD.cdsTempListaMesaIDVENDA.AsString :=
            DMD.cdsMesasAbertasIDVENDA.AsString;
          DMD.cdsTempListaMesaMESA.AsString :=
            DMD.cdsMesasAbertasNUM_MESA.AsString;
          DMD.cdsTempListaMesa.Post;

          DMD.cdsMesasAbertas.Next;
        end;
      end;
    finally
      MSGHide;
    end;

  except
    on E: Exception do
    begin
      MSGHide;
      ShowMessage('Problema ao carregar grupo : ' + E.Message);
    end;
  end;

end;

procedure TTabbedForm.ListConsultarVeiculoClick(Sender: TObject);
begin
  TabGourmet.ActiveTab := TabConsVeiculo;
  edtValorPesq.SetFocus;
end;

procedure TTabbedForm.listGrupoItemClick(const Sender: TCustomListBox;
const Item: TListBoxItem);
begin
  DMD.cdsGrupo.Locate('DESC_GRUPO', Item.Text, []);
  IdGrupoProducao := DMD.cdsGrupoIDGRUPO.AsString;
  Toast('Grupo selecionado com sucesso: ' + IdGrupoProducao);
end;

procedure TTabbedForm.ListItensTransMesaButtonClick(const Sender: TObject;
const AItem: TListItem; const AObject: TListItemSimpleControl);
var
  Retorno: string;
begin

  if trim(edtMesaDestino.Text) = EmptyStr then
  begin
    ShowMessage('Informe o cart�o de Destino');
    exit;
  end;

  if trim(edtMesaDestino.Text) = trim(edtMesaOrigem.Text) then
  begin
    ShowMessage
      ('Escolha outra Cart�o, opera��o n�o � permitida para mesma Cart�o!');
    exit;
  end;

  if IsRestauranteCasaAbertaMais24h then
  begin
    ShowMessage
      ('Casa aberta a mais de 24h proceda com o fechamento e a reabertura!');
    exit;
  end;

  if GetExistePreconta(edtMesaOrigem.Text, IdAberturaCasa) then
  begin
    ShowMessage('Preconta foi emitida favor desbloquear!');
    exit;
  end;

  if GetExistePreconta(edtMesaDestino.Text, IdAberturaCasa) then
  begin
    ShowMessage('Preconta foi emitida favor desbloquear!');
    exit;
  end;

  if DMD.cdsPreContaDetalhe.Locate('ID', AItem.Index, []) then
  begin
    Retorno := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
      ':8085/datasnap/rest/TDMServerM/SetRestauranteTransfereProduto/' +
      DMD.cdsPreContaDetalheIDVENDAITEM.AsString + '/' +
      DMD.cdsCasaAbertaIDABERTURACASA.AsString + '/' + edtMesaDestino.Text + '/'
      + IntToStr(USU_CODIGO) + '/' + USU_LOGIN + '/' + IDEMPRESA);

    Toast('Trenferindo para Cart�o: ' + edtMesaDestino.Text + ' Item: ' +
      DMD.cdsPreContaDetalheDESC_COMPLETA.AsString);
    ListItensTransMesa.Items[AItem.Index].Objects.TextButton.Visible := false;
    // AItem.Objects.TextButton.Visible := false;
  end;

end;

procedure TTabbedForm.ListLancaMesaClick(Sender: TObject);
begin
  TabGourmet.ActiveTab := TabInfMesa;
  edtMesa.SetFocus;
end;

procedure TTabbedForm.ListLavaJatoClick(Sender: TObject);
begin
  TabGourmet.ActiveTab := TabVeiculo;
end;

procedure TTabbedForm.ListMesaAbertaClick(Sender: TObject);
begin
  ListarMesasAbertas;
  TabGourmet.ActiveTab := TabMesasAbertas;
  TabMesaAbertasItens.ActiveTab := TabMesaLista;
end;

procedure TTabbedForm.ListMesasAbertasItemClick(const Sender: TObject;
const AItem: TListViewItem);
var
  LItem: TListViewItem;
begin
  try
    MSGShow('Buscando item do cart�o....');
    if DMD.cdsTempListaMesa.Locate('ID', AItem.Index, []) then
    begin
      DMD.JSONToClientDataSet(DMD.cdsMesaDetalhe, 'GetJSONListaMesaDetalhe',
        DMD.cdsTempListaMesaIDVENDA.AsString);

      ListMesaAbertaDetalhe.Items.Clear;
      DMD.cdsMesaDetalhe.First;
      while not DMD.cdsMesaDetalhe.Eof do
      begin
        LItem := ListMesaAbertaDetalhe.Items.Add;
        LItem.Text := DMD.cdsMesaDetalheDESC_COMPLETA.AsString;
        LItem.Detail := 'Qtd: ' + DMD.cdsMesaDetalheQTD.AsString + ' X ' +
          DMD.cdsMesaDetalheVALOR_UNITARIO.AsString + ' = ' +
          DMD.cdsMesaDetalheVALOR_LIQUIDO.AsString;

        DMD.cdsMesaDetalhe.Next;
      end;
      lblMesaAbertaLista.Text := 'Cart�o Selecionada: ' +
        FormatFloat('000', DMD.cdsTempListaMesaMESA.AsFloat);
      TabMesaAbertasItens.ActiveTab := TabMesaDetalhe;
    end;
  finally
    MSGHide;
  end;

end;

procedure TTabbedForm.ListObsProdItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  if ListObsProd.Items[AItem.Index].Objects.AccessoryObject.Visible then
    ListObsProd.Items[AItem.Index].Objects.AccessoryObject.Visible := false
  else
    ListObsProd.Items[AItem.Index].Objects.AccessoryObject.Visible := true;
end;

procedure TTabbedForm.ListProducaoClick(Sender: TObject);
begin
  GetCarregaProdutoProducao;
  TabGourmet.ActiveTab := TabProducao;
end;

procedure TTabbedForm.ListProdutoGrupoButtonClick(const Sender: TObject;
const AItem: TListItem; const AObject: TListItemSimpleControl);
var
  QtdSabor: Integer;
begin
  QtdSabor := (cmbQtdSabores.ItemIndex + 1);

  if (ContSabor >= QtdSabor) and pnlSabores.Visible then
  begin
    ShowMessage('Quantidade de sabores j� foi lan�ada!');
    exit;
  end;

  if DMD.cdsProduto.Locate('ID', AItem.Index, []) then
  begin

    if DMD.cdsProdutoFLAG_BALANCA.AsInteger = 1 then
    begin
      lblProdutoDescPeso.Text := DMD.cdsProdutoDESC_COMPLETA.AsString;
      TabProdutoResult.ActiveTab := TabInfoPeso;
      exit;
    end;

    if not GetObsProduto(DMD.cdsProdutoCODPRODUTO.AsString) then
    begin
      // ShowMessage(DMD.cdsProdutoCODPRODUTO.AsString + ' desc : ' +
      // DMD.cdsProdutoDESC_COMPLETA.AsString);
      DMD.cdsVendaItem.Insert;
      DMD.cdsVendaItemCODPRODUTO.AsInteger :=
        DMD.cdsProdutoCODPRODUTO.AsInteger;
      DMD.cdsVendaItemDESC_COMPLETA.AsString :=
        DMD.cdsProdutoDESC_COMPLETA.AsString;
      if pnlSabores.Visible then
      begin
        DMD.cdsVendaItemQTD.AsFloat := (1 / QtdSabor);
        DMD.cdsVendaItemFLAG_SABOR.AsInteger := 1;
        inc(ContSabor);
      end
      else
      begin
        DMD.cdsVendaItemFLAG_SABOR.AsInteger := 0;
        DMD.cdsVendaItemQTD.AsFloat := 1;
      end;
      DMD.cdsVendaItemIDCONSULTOR.AsString := IDVENDEDOR;
      // DMD.cdsVendaItemDESCRICAO_COMPLEMENTAR.AsString :=
      // TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
      DMD.cdsVendaItem.Post;

      Toast('Adicionando ' + DMD.cdsProdutoDESC_COMPLETA.AsString);
    end
    else
    begin
      TabProdutoResult.ActiveTab := TabProdutoObs;
    end;
  end;

end;

procedure TTabbedForm.ListResultItemClick(const Sender: TObject;
const AItem: TListViewItem);
var
  LItems: TListViewItem;

begin
  DMD.cdsProduto.IndexFieldNames := 'DESC_COMPLETA';
  DMD.cdsProduto.Filtered := false;
  DMD.cdsProduto.Filter := 'IDGRUPO =' + QuotedStr(AItem.Detail);
  DMD.cdsProduto.Filtered := true;
  edtValorPesq.Text := '';
  if not DMD.cdsProduto.IsEmpty then
  begin
    ListProdutoGrupo.Items.Clear;
    DMD.cdsProduto.First;
    while not DMD.cdsProduto.Eof do
    begin
      DMD.cdsProduto.Edit;
      DMD.cdsProdutoDESC_COMPLETA.AsString :=
        TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);

      LItems := ListProdutoGrupo.Items.Add;
      LItems.Text := TiraAcentos(DMD.cdsProdutoDESC_COMPLETA.AsString);
      LItems.Detail := 'Cod.: ' + DMD.cdsProdutoCODPRODUTO.AsString + ' Pre�o: '
        + DMD.cdsProdutoPRECO.AsString;

      if DMD.cdsProdutoFLAG_BALANCA.AsInteger = 1 then
        LItems.ButtonText := 'Peso'
      else
        LItems.ButtonText := '+';
      DMD.cdsProdutoID.AsInteger := LItems.Index;
      DMD.cdsProduto.Post;
      DMD.cdsProduto.Next;
    end;

    TabGourmet.ActiveTab := TabProduto;

    if IsVariosSabores(AItem.Detail) then
      pnlSabores.Visible := true
    else
      pnlSabores.Visible := false;

    TabProdutoResult.ActiveTab := TabProdutoLista;
  end
  else
  begin
    DMD.cdsProduto.Filtered := false;
    DMD.cdsProduto.Filter := '';
    ShowMessage('Sem registro para grupo selecionado!');
  end;

  // GetProduto(AItem.Detail);

end;

procedure TTabbedForm.ListTransMesaClick(Sender: TObject);
begin
  ListItensTransMesa.Items.Clear;
  edtMesaOrigem.Text := EmptyStr;
  edtMesaDestino.Text := EmptyStr;
  TabGourmet.ActiveTab := TabTransfMesa;
end;

procedure TTabbedForm.ListVendaItemButtonClick(const Sender: TObject;
const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  if DMD.cdsVendaItem.Locate('ID', AItem.Index, []) then
  begin
    DMD.cdsVendaItem.Delete;
    ListVendaItem.Items[AItem.Index].Objects.TextButton.Visible := false;
  end;
end;

procedure TTabbedForm.Login(senha: string);
var
  str_result_Get: string;
  Parte: TStringList;
begin

  try
    TLoading.Show(TabbedForm, 'Aguarde estou validando sua senha...');

    TThread.CreateAnonymousThread(
      procedure
      begin
        Parte := TStringList.Create;
        str_result_Get := DMD.IdHTTP1.Get('http://' + DMD.GetHost +
          ':8085/datasnap/rest/TDMServerM/GetLoginGarcom/' + senha);

        str_result_Get := StringReplace(str_result_Get, '{"result":["', '', []);
        str_result_Get := StringReplace(str_result_Get, '"]}', '', []);
        str_result_Get := StringReplace(str_result_Get, '[[', '', []);
        str_result_Get := StringReplace(str_result_Get, ']]', '', []);

        if str_result_Get <> EmptyStr then
        begin
          Label8.Visible := false;
          Parte.Clear;
          ExtractStrings(['|'], [], PChar(str_result_Get), Parte);

          if Parte[3] = EmptyStr then
          begin
            ShowMessage
              ('Voc� deve informar o profissional no cadastro de funcion�rio!');
            exit;
          end;

          USU_CODIGO := StrToInt(Parte[0]);
          USU_LOGIN := Parte[1];
          IDEMPRESA := Parte[2];
          IDVENDEDOR := Parte[3];
          VENDA_IDCLIENTEPADRAO := Parte[4];

          if IDVENDEDOR <> '' then
          begin
            lblGarcon.Text := 'PROF. : ' + USU_LOGIN;
            // IdAberturaCasa := DMD.cdsCasaAbertaIDABERTURACASA.AsString;
            GetCarregaGrupos;
            GetProduto('0');
            TabGourmet.ActiveTab := TabMenu;
          end
          else
          begin
            Label8.Text := 'Erro ao validar o login';
            Label8.Visible := true;

            // exit;
          end;

        end
        else
        begin
          Label8.Text := 'Erro: sem retorno do servidor';
          Label8.Visible := true;

        end;
        Parte.Free;
        TThread.Synchronize(nil,
          procedure
          begin
            TLoading.Hide;
          end);

      end).Start;

  finally

  end;

end;

procedure TTabbedForm.MSGHide;
begin
  fgActivityDialog.Hide;
end;

procedure TTabbedForm.MSGShow(Msn: string);
begin
  fgActivityDialog.Title := 'Aguarde...';
  fgActivityDialog.Message := Msn;
  fgActivityDialog.Show;
end;

procedure TTabbedForm.SalvarClick(Sender: TObject);
begin
  if trim(edtLocalServer.Text) = EmptyStr then
  begin
    ShowMessage('Informe o endere�o do servidor');
    exit;
  end;

  DMD.SaveConfig(edtLocalServer.Text, IdGrupoProducao);

  Toast('Salvando o config: ' + edtLocalServer.Text + 'IDgrupo: ' +
    IdGrupoProducao);
  TabGourmet.ActiveTab := TabLogin;

end;

procedure TTabbedForm.SetAdicionarObs(ID, Descricao: string);
begin
  SetLength(RegObservacao, Length(RegObservacao) + 1);
  RegObservacao[Length(RegObservacao) - 1].ID := ID;
  RegObservacao[Length(RegObservacao) - 1].Descricao := Descricao;
end;

procedure TTabbedForm.Timer1Timer(Sender: TObject);
begin
  if TabGourmet.ActiveTab = TabProducao then
  begin
    GetCarregaProdutoProducao;
  end;
end;

function TTabbedForm.TiraAcentos(texto: string): String;
const
  sLetraA = '������������������������������������������������/';
  sLetraB = 'aeiouaeiouaeiouaeiouaoncAEIOUAEIOUAEIOUAEIOUAONC ';
var
  I: Integer;
begin
  for I := 1 to Length(sLetraA) do
    texto := StringReplace(texto, sLetraA[I], sLetraB[I], [rfReplaceAll]);

  Result := texto;

end;

procedure TTabbedForm.VerificarExistePlaca(Placa: string);
var
  Parans: string;
begin
  try
    MSGShow('Buscando Dados.....');
    Parans := Placa + '/' + IDEMPRESA;
    DMD.JSONToClientDataSet(DMD.cdsVeiculo,
      'GetJSONConsultaPlacaExiste', Parans);

    if not DMD.cdsVeiculo.IsEmpty then
    begin
      edtModelo.Text := DMD.cdsVeiculoVEICULO_MODELO.AsString;
      edtFone.Text := DMD.cdsVeiculoCONTATO_FONE.AsString;
      edtContato.Text := DMD.cdsVeiculoCONTATO_CLIENTE.AsString;
    end
    else
    begin
      MSGHide;
      Toast('N�o encontrou o cliente!');
    end;
  finally
    MSGHide;
  end;
end;

procedure TTabbedForm.VoltarMenu;
begin
  TabGourmet.ActiveTab := TabMenu;
  Mesa := '';
  QTDEPESSOA := 1;
  edtMesa.Text := '';
end;

end.
