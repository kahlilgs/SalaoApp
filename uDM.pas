unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, System.JSON, Data.DBXJSON,
  DBXJSONReflect, IniFiles, System.IOUtils, FMX.Dialogs;

type
  TDMD = class(TDataModule)
    cdsGrupo: TClientDataSet;
    cdsProduto: TClientDataSet;
    IdHTTP1: TIdHTTP;
    cdsGrupoIDGRUPO: TStringField;
    cdsGrupoDESC_GRUPO: TStringField;
    cdsGrupoIDSECAO: TStringField;
    cdsProdutoCODPRODUTO: TIntegerField;
    cdsProdutoDESC_COMPLETA: TStringField;
    cdsProdutoFLAG_CUSTOMIZADO: TIntegerField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoPRECO: TStringField;
    cdsVendaItem: TClientDataSet;
    cdsVendaItemCODPRODUTO: TIntegerField;
    cdsVendaItemQTD: TFloatField;
    cdsVendaItemIDCONSULTOR: TStringField;
    cdsVendaItemDESCRICAO_COMPLEMENTAR: TMemoField;
    cdsMesasAbertas: TClientDataSet;
    cdsMesasAbertasNUM_MESA: TStringField;
    cdsMesasAbertasTOTAL_LIQUIDO: TStringField;
    cdsMesasAbertasQTDPESSOAS: TStringField;
    cdsMesasAbertasHORA_EMISSAO: TStringField;
    cdsProdutoObs: TClientDataSet;
    cdsProdutoObsIDPRODUTOOBSERVACOES: TStringField;
    cdsProdutoObsCODPRODUTO: TStringField;
    cdsProdutoObsOBSERVACOES: TStringField;
    cdsMesasAbertasQTD_ITEM: TStringField;
    cdsPreConta: TClientDataSet;
    cdsPreContaIDVENDA: TStringField;
    cdsPreContaIDEMPRESA: TStringField;
    cdsPreContaDT_EMISSAO: TStringField;
    cdsPreContaHORA_EMISSAO: TStringField;
    cdsPreContaTOTAL_LIQUIDO: TStringField;
    W: TStringField;
    cdsPreContaDetalhe: TClientDataSet;
    cdsPreContaDetalheIDVENDAITEM: TStringField;
    cdsPreContaDetalheSTATUSITEM: TIntegerField;
    cdsPreContaDetalheIDVENDA: TStringField;
    cdsPreContaDetalheCODPRODUTO: TStringField;
    cdsPreContaDetalheQTD: TStringField;
    cdsPreContaDetalheVALOR_UNITARIO: TStringField;
    cdsPreContaDetalheVALOR_LIQUIDO: TStringField;
    cdsPreContaDetalheDESC_COMPLETA: TStringField;
    cdsCasaAberta: TClientDataSet;
    cdsCasaAbertaIDABERTURACASA: TStringField;
    cdsCasaAbertaDATAABERTURA: TStringField;
    cdsCasaAbertaHORAABERTURA: TStringField;
    cdsCasaAbertaMESAINICIAL: TStringField;
    cdsCasaAbertaMESAFINAL: TStringField;
    cdsCasaAbertaDATACOUVER: TStringField;
    cdsCasaAbertaHORACOUVER: TStringField;
    cdsCasaAbertaFLAG_COURVERTMESAPESSOA: TStringField;
    cdsCasaAbertaFLAG_COUVER: TStringField;
    cdsMesasAbertasIDVENDA: TStringField;
    cdsTempListaMesa: TClientDataSet;
    cdsTempListaMesaID: TIntegerField;
    cdsTempListaMesaIDVENDA: TStringField;
    cdsTempListaMesaMESA: TStringField;
    cdsMesasAbertasSENHAPRECONTA: TStringField;
    cdsVendaItemDESC_COMPLETA: TStringField;
    cdsVendaItemFLAG_SABOR: TIntegerField;
    cdsProdutoFLAG_BALANCA: TIntegerField;
    cdsVendaVeiculo: TClientDataSet;
    cdsVendaVeiculoCOD_DAV_PREVENDA: TIntegerField;
    cdsVendaVeiculoVEICULO_PLACA: TStringField;
    cdsVendaVeiculoCODPRODUTO: TIntegerField;
    cdsVendaVeiculoNOMEPRODUTO: TStringField;
    cdsVendaVeiculoQTD: TFloatField;
    cdsVeiculo: TClientDataSet;
    cdsVeiculoVEICULO_PLACA: TStringField;
    cdsVeiculoVEICULO_MODELO: TStringField;
    cdsVeiculoCONTATO_CLIENTE: TStringField;
    cdsVeiculoCONTATO_FONE: TStringField;
    cdsMesaDetalhe: TClientDataSet;
    cdsMesaDetalheCODPRODUTO: TStringField;
    cdsMesaDetalheQTD: TStringField;
    cdsMesaDetalheVALOR_UNITARIO: TStringField;
    cdsMesaDetalheVALOR_LIQUIDO: TStringField;
    cdsMesaDetalheDESC_COMPLETA: TStringField;
    cdsProdutoProducao: TClientDataSet;
    cdsProdutoProducaoIDVENDA: TStringField;
    cdsProdutoProducaoCOD_DAV_PREVENDA: TStringField;
    cdsProdutoProducaoNUM_MESA: TStringField;
    cdsProdutoProducaoCODPRODUTO: TStringField;
    cdsProdutoProducaoNOMEPRODUTO: TStringField;
    cdsProdutoProducaoHORA_EMISSAO: TStringField;
    cdsProdutoProducaoQUANTIDADE: TStringField;
    cdsProdutoProducaoGARCOM: TStringField;
    cdsProdutoID: TIntegerField;
    cdsVendaItemID: TIntegerField;
    cdsPreContaDetalheID: TIntegerField;
    cdsProdutoIDGRUPO: TStringField;
    cdsMesasAbertasNOME_PESSOA: TStringField;
    cdsAgenda: TClientDataSet;
    cdsAgendaDATAAGENDA: TDateField;
    cdsAgendaNOMECLIENTE: TStringField;
    cdsAgendaTELEFONE: TStringField;
    cdsAgendaSTATUS: TIntegerField;
    cdsAgendaHORA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function StringRep(Texto: string; sOriginal: string;
      sTroca: string): string;
  public
    { Public declarations }
    function GetHost: string;
    function GetIdGrupo: string;
    procedure SaveConfig(local: string; IDGrupo: string = '');
    procedure JSONToClientDataSet(_ACds: TClientDataSet; Metodo: string;
      Param: string);

  end;

var
  DMD: TDMD;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}
{ TDMD }

procedure TDMD.DataModuleCreate(Sender: TObject);
begin
  if not cdsVendaItem.Active then
  begin
    cdsVendaItem.CreateDataSet;
    cdsVendaItem.Open;
  end;

end;

function TDMD.GetHost: string;
var
  Ini: TIniFile;
  sHost: string;
begin
  Ini := TIniFile.Create(TPath.Combine(TPath.GetDocumentsPath, 'Config.ini'));
  sHost := Ini.ReadString('CONEXAO', 'HostName', '');
  Result := sHost;

end;

function TDMD.GetIdGrupo: string;
var
  Ini: TIniFile;
  sIDGrupo: string;
begin
  Ini := TIniFile.Create(TPath.Combine(TPath.GetDocumentsPath, 'Config.ini'));
  sIDGrupo := Ini.ReadString('CONEXAO', 'IDGRUPO', '');
  Result := sIDGrupo;
end;

procedure TDMD.JSONToClientDataSet(_ACds: TClientDataSet;
  Metodo, Param: string);
var
  AJsonObject, AJsonSubObj: TJSONObject;
  AJsonPair, AJsonSubPair: TJSONPair;
  AJsonArray: TJSONArray;
  J, I: Integer;
  AField: TField;
  str_result_Get: string;

  Host: string;
begin

  Host := GetHost;

  str_result_Get := IdHTTP1.Get('http://' + Host +
    ':8085/datasnap/rest/TDMServerM/' + Metodo + '/' + Param);

  str_result_Get := StringReplace(str_result_Get, '[[', '[', []);
  str_result_Get := StringReplace(str_result_Get, ']]', ']', []);

  if not _ACds.Active then
  begin
    _ACds.CreateDataSet;
    _ACds.Open;
  end;
  _ACds.EmptyDataSet;

  AJsonSubObj := TJSONObject.ParseJSONValue
    (TEncoding.ASCII.GetBytes(str_result_Get), 0) as TJSONObject;

  AJsonPair := AJsonSubObj.Get(0);

  AJsonArray := (AJsonPair.JsonValue as TJSONArray);

  for I := 0 to AJsonArray.Size - 1 do
  begin
    _ACds.Append;

    AJsonSubObj := TJSONObject(AJsonArray.Get(I));

    for J := 0 to AJsonSubObj.Size - 1 do
    begin

      AJsonSubPair := AJsonSubObj.Get(J);

      AField := _ACds.FindField(AJsonSubPair.JsonString.Value);
      if Assigned(AField) then
      begin
        try
          case AField.DataType of
            ftString:
              AField.Value := AJsonSubPair.JsonValue.Value;
            ftSmallint, ftInteger:
              begin
                if Trim(AJsonSubPair.JsonValue.Value) <> EmptyStr then
                  AField.Value := AJsonSubPair.JsonValue.Value;
              end;
            ftFMTBcd, ftBCD, ftFloat, ftCurrency:
              begin
                if Trim(AJsonSubPair.JsonValue.Value) <> EmptyStr then
                begin
                  try
                    StrToFloat(AJsonSubPair.JsonValue.Value);
                    AField.Value := AJsonSubPair.JsonValue.Value;
                  except
                    AField.Value := StringRep(AJsonSubPair.JsonValue.Value,
                      ',', '.');
                  end;
                end;
              end;
            ftDate:
              begin
                if Trim(AJsonSubPair.JsonValue.Value) <> EmptyStr then
                  AField.Value := AJsonSubPair.JsonValue.Value;
              end;
            ftDateTime:
              begin
                if Trim(AJsonSubPair.JsonValue.Value) <> EmptyStr then
                  AField.AsDateTime :=
                    StrToDateTime(AJsonSubPair.JsonValue.Value);
              end;
          end;
        except
          On E: Exception do
          begin
            Continue;
          end;
        end;
      end;
    end;

    _ACds.Post;
  end;

end;

procedure TDMD.SaveConfig(local: string; IDGrupo: string);
var
  Ini: TIniFile;
begin
  try
    Ini := TIniFile.Create(TPath.Combine(TPath.GetDocumentsPath, 'Config.ini'));

    if Trim(local) = EmptyStr then
    begin
      ShowMessage('Informe o endereço do servidor!');
      exit;
    end;

    Ini.WriteString('CONEXAO', 'HostName', local);
    Ini.WriteString('CONEXAO', 'IDGRUPO', IDGrupo);

  finally
    Ini.DisposeOf;
    ShowMessage('Sucesso configurações salvas!');
  end;

end;

function TDMD.StringRep(Texto, sOriginal, sTroca: string): string;
begin
  Result := StringReplace(Texto, sOriginal, sTroca, [rfReplaceAll]);
end;

{ Config }

end.
