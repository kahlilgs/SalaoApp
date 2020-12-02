object DMD: TDMD
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 481
  Width = 731
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 64
    object cdsGrupoIDGRUPO: TStringField
      FieldName = 'IDGRUPO'
      Size = 40
    end
    object cdsGrupoDESC_GRUPO: TStringField
      FieldName = 'DESC_GRUPO'
      Size = 150
    end
    object cdsGrupoIDSECAO: TStringField
      FieldName = 'IDSECAO'
      Size = 40
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODPRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DESC_COMPLETA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'FLAG_CUSTOMIZADO'
        DataType = ftInteger
      end
      item
        Name = 'ESTOQUE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG_BALANCA'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'IDGRUPO'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 200
    Top = 64
    object cdsProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsProdutoDESC_COMPLETA: TStringField
      FieldName = 'DESC_COMPLETA'
      Size = 200
    end
    object cdsProdutoFLAG_CUSTOMIZADO: TIntegerField
      FieldName = 'FLAG_CUSTOMIZADO'
    end
    object cdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
    end
    object cdsProdutoPRECO: TStringField
      FieldName = 'PRECO'
    end
    object cdsProdutoFLAG_BALANCA: TIntegerField
      FieldName = 'FLAG_BALANCA'
    end
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
    end
    object cdsProdutoIDGRUPO: TStringField
      FieldName = 'IDGRUPO'
      Size = 40
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 279
    Top = 104
  end
  object cdsVendaItem: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODPRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'QTD'
        DataType = ftFloat
      end
      item
        Name = 'IDCONSULTOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESCRICAO_COMPLEMENTAR'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'DESC_COMPLETA'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'FLAG_SABOR'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 353
    Top = 56
    object cdsVendaItemCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaItemQTD: TFloatField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaItemIDCONSULTOR: TStringField
      FieldName = 'IDCONSULTOR'
      Size = 40
    end
    object cdsVendaItemDESCRICAO_COMPLEMENTAR: TMemoField
      FieldName = 'DESCRICAO_COMPLEMENTAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsVendaItemDESC_COMPLETA: TStringField
      FieldName = 'DESC_COMPLETA'
      Size = 200
    end
    object cdsVendaItemFLAG_SABOR: TIntegerField
      FieldName = 'FLAG_SABOR'
    end
    object cdsVendaItemID: TIntegerField
      FieldName = 'ID'
    end
  end
  object cdsMesasAbertas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUM_MESA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TOTAL_LIQUIDO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTDPESSOAS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'HORA_EMISSAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTD_ITEM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IDVENDA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHAPRECONTA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 72
    object cdsMesasAbertasNUM_MESA: TStringField
      FieldName = 'NUM_MESA'
      Size = 4
    end
    object cdsMesasAbertasTOTAL_LIQUIDO: TStringField
      FieldName = 'TOTAL_LIQUIDO'
    end
    object cdsMesasAbertasQTDPESSOAS: TStringField
      FieldName = 'QTDPESSOAS'
      Size = 10
    end
    object cdsMesasAbertasHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
    end
    object cdsMesasAbertasQTD_ITEM: TStringField
      FieldName = 'QTD_ITEM'
      Size = 10
    end
    object cdsMesasAbertasIDVENDA: TStringField
      FieldName = 'IDVENDA'
      Size = 40
    end
    object cdsMesasAbertasSENHAPRECONTA: TStringField
      FieldName = 'SENHAPRECONTA'
      Size = 40
    end
    object cdsMesasAbertasNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 100
    end
  end
  object cdsProdutoObs: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 176
    object cdsProdutoObsIDPRODUTOOBSERVACOES: TStringField
      FieldName = 'IDPRODUTOOBSERVACOES'
      Size = 40
    end
    object cdsProdutoObsCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object cdsProdutoObsOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 200
    end
  end
  object cdsPreConta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 152
    object cdsPreContaIDVENDA: TStringField
      FieldName = 'IDVENDA'
      Size = 40
    end
    object cdsPreContaIDEMPRESA: TStringField
      FieldName = 'IDEMPRESA'
      Size = 40
    end
    object cdsPreContaDT_EMISSAO: TStringField
      FieldName = 'DT_EMISSAO'
      Size = 40
    end
    object cdsPreContaHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 40
    end
    object cdsPreContaTOTAL_LIQUIDO: TStringField
      FieldName = 'TOTAL_LIQUIDO'
      Size = 45
    end
    object W: TStringField
      FieldName = 'VENDEDOR_RAZAOSOCIAL'
      Size = 200
    end
  end
  object cdsPreContaDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 168
    object cdsPreContaDetalheIDVENDAITEM: TStringField
      FieldName = 'IDVENDAITEM'
      Size = 40
    end
    object cdsPreContaDetalheSTATUSITEM: TIntegerField
      FieldName = 'STATUSITEM'
    end
    object cdsPreContaDetalheIDVENDA: TStringField
      FieldName = 'IDVENDA'
      Size = 40
    end
    object cdsPreContaDetalheCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 40
    end
    object cdsPreContaDetalheQTD: TStringField
      FieldName = 'QTD'
    end
    object cdsPreContaDetalheVALOR_UNITARIO: TStringField
      FieldName = 'VALOR_UNITARIO'
      Size = 40
    end
    object cdsPreContaDetalheVALOR_LIQUIDO: TStringField
      FieldName = 'VALOR_LIQUIDO'
      Size = 45
    end
    object cdsPreContaDetalheDESC_COMPLETA: TStringField
      FieldName = 'DESC_COMPLETA'
      Size = 200
    end
    object cdsPreContaDetalheID: TIntegerField
      FieldName = 'ID'
    end
  end
  object cdsCasaAberta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 256
    object cdsCasaAbertaIDABERTURACASA: TStringField
      FieldName = 'IDABERTURACASA'
      Size = 40
    end
    object cdsCasaAbertaDATAABERTURA: TStringField
      FieldName = 'DATAABERTURA'
      Size = 30
    end
    object cdsCasaAbertaHORAABERTURA: TStringField
      FieldName = 'HORAABERTURA'
    end
    object cdsCasaAbertaMESAINICIAL: TStringField
      FieldName = 'MESAINICIAL'
      Size = 10
    end
    object cdsCasaAbertaMESAFINAL: TStringField
      FieldName = 'MESAFINAL'
      Size = 10
    end
    object cdsCasaAbertaDATACOUVER: TStringField
      FieldName = 'DATACOUVER'
      Size = 30
    end
    object cdsCasaAbertaHORACOUVER: TStringField
      FieldName = 'HORACOUVER'
      Size = 10
    end
    object cdsCasaAbertaFLAG_COURVERTMESAPESSOA: TStringField
      FieldName = 'FLAG_COURVERTMESAPESSOA'
      Size = 2
    end
    object cdsCasaAbertaFLAG_COUVER: TStringField
      FieldName = 'FLAG_COUVER'
      Size = 2
    end
  end
  object cdsTempListaMesa: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000030000000000030000005A0002494404
      0001000000000007494456454E44410100490000000100055749445448020002
      002800044D4553410100490000000100055749445448020002001E000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 288
    object cdsTempListaMesaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsTempListaMesaIDVENDA: TStringField
      FieldName = 'IDVENDA'
      Size = 40
    end
    object cdsTempListaMesaMESA: TStringField
      FieldName = 'MESA'
      Size = 30
    end
  end
  object cdsVendaVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 256
    object cdsVendaVeiculoCOD_DAV_PREVENDA: TIntegerField
      FieldName = 'COD_DAV_PREVENDA'
    end
    object cdsVendaVeiculoVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Size = 10
    end
    object cdsVendaVeiculoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object cdsVendaVeiculoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 200
    end
    object cdsVendaVeiculoQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object cdsVeiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 144
    object cdsVeiculoVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Size = 10
    end
    object cdsVeiculoVEICULO_MODELO: TStringField
      FieldName = 'VEICULO_MODELO'
      Size = 60
    end
    object cdsVeiculoCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 100
    end
    object cdsVeiculoCONTATO_FONE: TStringField
      FieldName = 'CONTATO_FONE'
      Size = 16
    end
  end
  object cdsMesaDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 224
    object cdsMesaDetalheCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 40
    end
    object cdsMesaDetalheQTD: TStringField
      FieldName = 'QTD'
    end
    object cdsMesaDetalheVALOR_UNITARIO: TStringField
      FieldName = 'VALOR_UNITARIO'
      Size = 40
    end
    object cdsMesaDetalheVALOR_LIQUIDO: TStringField
      FieldName = 'VALOR_LIQUIDO'
      Size = 45
    end
    object cdsMesaDetalheDESC_COMPLETA: TStringField
      FieldName = 'DESC_COMPLETA'
      Size = 200
    end
  end
  object cdsProdutoProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 312
    object cdsProdutoProducaoIDVENDA: TStringField
      FieldName = 'IDVENDA'
      Size = 50
    end
    object cdsProdutoProducaoCOD_DAV_PREVENDA: TStringField
      FieldName = 'COD_DAV_PREVENDA'
      Size = 40
    end
    object cdsProdutoProducaoNUM_MESA: TStringField
      FieldName = 'NUM_MESA'
      Size = 40
    end
    object cdsProdutoProducaoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 40
    end
    object cdsProdutoProducaoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Size = 200
    end
    object cdsProdutoProducaoHORA_EMISSAO: TStringField
      FieldName = 'HORA_EMISSAO'
      Size = 40
    end
    object cdsProdutoProducaoQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
    end
    object cdsProdutoProducaoGARCOM: TStringField
      FieldName = 'GARCOM'
      Size = 120
    end
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATAAGENDA'
        DataType = ftDate
      end
      item
        Name = 'NOMECLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
      end
      item
        Name = 'HORA'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 248
    object cdsAgendaDATAAGENDA: TDateField
      FieldName = 'DATAAGENDA'
    end
    object cdsAgendaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsAgendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsAgendaSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsAgendaHORA: TStringField
      FieldName = 'HORA'
      Size = 15
    end
  end
end
