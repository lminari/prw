#INCLUDE "rwmake.ch"
#INCLUDE "topconn.ch"
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016    บAutor  ณAleson Clayton				  บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณRegistros de Querys: para a verificacao de erros na base de dados    บฑฑ
ฑฑฬออออออออออุอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณConsolidar Solucoes em Sistemas Ltda.                            r2  บฑฑ
ฑฑศออออออออออฯอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\cb7_notin_sc2.html",_cResumo:="Cabe็alho Ordem de separa็ใo NOT IN na OP"
Private oProcess,oHTML
WfPrepEnv(aPar[1],aPar[2],"HYD016")
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16001"))
_aDados := U_HYD016A()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.ORDSEP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,3])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016B(aPar)
Return

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016A   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณCB7_NOTIN_SC2 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016A(aPar)
Local _nItens := 0,_aDado  := {},_aDad   := {},_cQuery:="",cQuery:=""
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")


For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(CB7_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT CB7_ORDSEP, CB7_ORIGEM, CB7_OP FROM "+RetSqlName("CB7")
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += " WHERE "+RetSqlName("CB7")+".D_E_L_E_T_ <>'*' AND (CB7_OP) NOT IN (SELECT C2_NUM+C2_ITEM+C2_SEQUEN FROM "+RetSqlName("SC2")
else
	cQuery += " WHERE "+RetSqlName("CB7")+".D_E_L_E_T_ <>'*' AND (CB7_OP) NOT IN (SELECT C2_NUM||C2_ITEM||C2_SEQUEN FROM "+RetSqlName("SC2")
endif
cQuery += " WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += "CB7_ORIGEM = '3' ORDER BY CB7_ORDSEP,CB7_ORIGEM,CB7_OP "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->CB7_ORDSEP, TRAB->CB7_ORIGEM, TRAB->CB7_OP})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016B   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณCB7_NOTIN_SC9 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016B(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\cb7_notin_sc9.html",_cResumo:="Cabe็alho Ordem de separa็ใo NOT IN nos Pedidos liberados"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16002"))
_aDados := U_HYD016C()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.ORDSEP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,3])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016D(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016C   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณCB7_NOTIN_SC9 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016C()
Local _nItens := 0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")


For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(CB7_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT CB7_ORDSEP, CB7_PEDIDO, CB7_ORIGEM FROM "+RetSqlName("CB7")
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += " WHERE "+RetSqlName("CB7")+".D_E_L_E_T_ <>'*' AND (CB7_PEDIDO+CB7_ORDSEP) NOT IN (SELECT C9_PEDIDO+C9_ORDSEP FROM "+RetSqlName("SC9")+""
else
	cQuery += " WHERE "+RetSqlName("CB7")+".D_E_L_E_T_ <>'*' AND (CB7_PEDIDO, CB7_ORDSEP) NOT IN (SELECT C9_PEDIDO, C9_ORDSEP FROM "+RetSqlName("SC9")
endif	
cQuery += " WHERE "+RetSqlName("SC9")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += "CB7_ORIGEM='1' AND CB7_STATPA='0' ORDER BY CB7_PEDIDO "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->CB7_ORDSEP, TRAB->CB7_PEDIDO, TRAB->CB7_ORIGEM})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016D   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณCB8_NOTIN_CB7 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016D(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\cb8_notin_cb7.html",_cResumo:="Itens da Ordem de separa็ใo NOT IN no cabe็alho da Ordem de separa็ใo"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16003"))
_aDados := U_HYD016E()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.ORDSEP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,2])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016F(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016E   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณCB8_NOTIN_CB7 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016E()
Local _nItens := 0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")


For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(CB8_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT CB8_ORDSEP,CB8_PEDIDO FROM "+RetSqlName("CB8")+" WHERE "+RetSqlName("CB8")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += "(CB8_ORDSEP+CB8_PEDIDO) NOT IN (SELECT CB7_ORDSEP+CB7_PEDIDO FROM "+RetSqlName("CB7")+" 		"
else
	cQuery += "(CB8_ORDSEP, CB8_PEDIDO) NOT IN (SELECT CB7_ORDSEP, CB7_PEDIDO FROM "+RetSqlName("CB7")
endif		
cQuery += " WHERE "+RetSqlName("CB7")+".D_E_L_E_T_ <>'*') ORDER BY CB8_ORDSEP "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->CB8_ORDSEP, TRAB->CB8_PEDIDO})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016F   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ SC9_NOTIN_SC6													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016F(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc9_notin_sc6.html",_cResumo:="Pedidos liberados NOT IN no PV"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16004"))
_aDados := U_HYD016G()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.SEQ')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016H(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016G   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC9_NOTIN_SC6 													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016G()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""    
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C9_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C9_PEDIDO,C9_ITEM,C9_SEQUEN, C9_PRODUTO FROM "+RetSqlName("SC9")
cQuery += " WHERE "+RetSqlName("SC9")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery    
     If _cDbMs = "MSSQL" // BANCO MicroSoftSQL 
cQuery += "(C9_PEDIDO+C9_ITEM) NOT IN (SELECT C6_NUM+C6_ITEM FROM "+RetSqlName("SC6")+" WHERE "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*') "
	 else
cQuery += "(C9_PEDIDO,C9_ITEM) NOT IN (SELECT C6_NUM,C6_ITEM FROM "+RetSqlName("SC6")+" WHERE "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*') "
     endif
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C9_PEDIDO, TRAB->C9_ITEM, TRAB->C9_SEQUEN, TRAB->C9_PRODUTO})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016H   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ SC9_SC6       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016H(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc9_sc6.html",_cResumo:="Quantidade vendida < Quantidade liberada"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16005"))
_aDados := U_HYD016I()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QTDVEN')),_aDados[_nC,_nI,3])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016J(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016I   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC9_SC6       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016I()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:="" 
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C6_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C6_NUM,C6_ITEM,C6_QTDVEN FROM "+RetSqlName("SC6")
cQuery += " WHERE C6_QTDVEN < (SELECT SUM(C9_QTDLIB) FROM "+RetSqlName("SC9")+" WHERE C9_PEDIDO = C6_NUM AND C6_ITEM = C9_ITEM  AND "+RetSqlName("SC9")+".D_E_L_E_T_ <>'*')"
cQuery += " AND "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery
cQuery += "C6_NUM<>'006094' AND C6_NUM<>'006994' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C6_NUM, TRAB->C6_ITEM, TRANSFORM(TRAB->C6_QTDVEN,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado, _aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016J   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ SDC_NOTIN_SC2   													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016J(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sdc_notin_sc2.html",_cResumo:="Quantidade das Composi็๕es dos empenhos <> 0 e NOT IN na OP"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16006"))
_aDados := U_HYD016K()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,3])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016L(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016K   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_NOTIN_SC2    													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016K()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")


For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(DC_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT DC_OP,DC_ORIGEM,DC_QUANT FROM "+RetSqlName("SDC")
cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*'"
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += " AND (DC_OP) NOT IN (SELECT C2_NUM+C2_ITEM+C2_SEQUEN FROM "+RetSqlName("SC2")+" WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*') AND "
else
	cQuery += " AND (DC_OP) NOT IN (SELECT C2_NUM||C2_ITEM||C2_SEQUEN FROM "+RetSqlName("SC2")+" WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*') AND "
endif	
cQuery += _cQuery
cQuery += "DC_ORIGEM = 'SC2' AND DC_QUANT<>0 ORDER BY DC_OP "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->DC_OP, TRAB->DC_ORIGEM,TRANSFORM(TRAB->DC_QUANT,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016L   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ SDC_NOTIN_SC6   													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016L(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sdc_notin_sc6.html",_cResumo:=" Pedidos da composi็ใo do empenho NOT IN no PV"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16007"))
_aDados := U_HYD016M()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016N(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016M   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_NOTIN_SC6    													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016M()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:="" 
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(DC_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT DC_PEDIDO,DC_ITEM,DC_ORIGEM,DC_QUANT FROM "+RetSqlName("SDC")+"	" 
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND (DC_PEDIDO+DC_ITEM) NOT IN (SELECT C6_NUM+C6_ITEM FROM "+RetSqlName("SC6")+"	"
else
	cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND (DC_PEDIDO,DC_ITEM) NOT IN (SELECT C6_NUM,C6_ITEM FROM "+RetSqlName("SC6")
endif
cQuery += " WHERE "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += "DC_ORIGEM = 'SC6' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->DC_PEDIDO, TRAB->DC_ITEM, TRAB->DC_ORIGEM,TRANSFORM(TRAB->DC_QUANT,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016N   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_NOTIN_SD4   													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016N(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sdc_notin_sd4.html",_cResumo:="Composi็๕es dos empenhos NOT IN Requisi็๕es empenhadas"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16008"))
_aDados := U_HYD016O()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.TRT')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016P(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016O   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_NOTIN_SD4    													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016O()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""  
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(DC_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT DC_OP,DC_TRT,DC_PRODUTO,DC_ORIGEM,DC_QUANT FROM "+RetSqlName("SDC")
	If _cDbMs = "MSSQL" // BANCO MicroSoftSQL  
cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND (DC_OP+DC_TRT+DC_PRODUTO) NOT IN (SELECT D4_OP+D4_TRT+D4_COD FROM "+RetSqlName("SD4")+"   "
else
	cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND (DC_OP,DC_TRT,DC_PRODUTO) NOT IN (SELECT D4_OP,D4_TRT,D4_COD FROM "+RetSqlName("SD4")
endif
cQuery += " WHERE "+RetSqlName("SD4")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += "DC_ORIGEM = 'SC2' AND DC_QUANT <> 0 "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->DC_OP, TRAB->DC_TRT, TRAB->DC_PRODUTO,TRAB->DC_ORIGEM,TRANSFORM(TRAB->DC_QUANT,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016P   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_SD4       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016P(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sdc_sd4.html",_cResumo:="Quantidade da composi็ใo > quantidade empenhada"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16009"))
_aDados := U_HYD016Q()

For _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.LOCALIZ')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,6])
		Aadd((oHtml:valByName('TB.TRT')),_aDados[_nC,_nI,7])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016R(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016Q   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_SD4       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016Q()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:="" 
Local _cDbMs := UPPER(TcGetDb())
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(DC_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT DC_ORIGEM,DC_PRODUTO,DC_LOCAL,DC_LOCALIZ,DC_QUANT,DC_OP,DC_TRT FROM "+RetSqlName("SDC")
cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND  DC_QUANT > (SELECT SUM(D4_QUANT) FROM "+RetSqlName("SD4")
cQuery += " WHERE DC_OP = D4_OP AND DC_TRT = D4_TRT AND DC_PRODUTO = D4_COD AND "+RetSqlName("SD4")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += " DC_ORIGEM = 'SC2' ORDER BY DC_OP "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->DC_ORIGEM,TRAB->DC_PRODUTO,TRAB->DC_LOCAL,TRAB->DC_LOCALIZ,TRANSFORM(TRAB->DC_QUANT,"@E 999,999,999.99"),TRAB->DC_OP,TRAB->DC_TRT})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016R   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_SC9       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016R(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sdc_sc9.html",_cResumo:="Quantidade da composi็ใo > quantidade liberada"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16010"))
_aDados := U_HYD016S()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.ORIGEM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.LOCALIZ')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,6])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,7])
		Aadd((oHtml:valByName('TB.SEQ')),_aDados[_nC,_nI,8])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016T(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016S   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSDC_SC9       													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016S()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(DC_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT DC_ORIGEM,DC_PRODUTO,DC_LOCAL,DC_LOCALIZ,DC_QUANT,DC_PEDIDO,DC_ITEM,DC_SEQ FROM "+RetSqlName("SDC")
cQuery += " WHERE "+RetSqlName("SDC")+".D_E_L_E_T_ <>'*' AND  DC_QUANT > (SELECT SUM(C9_QTDLIB) FROM "+RetSqlName("SC9")
cQuery += " WHERE C9_PEDIDO = DC_PEDIDO AND DC_ITEM = C9_ITEM AND DC_SEQ = C9_SEQUEN AND "+RetSqlName("SC9")+".D_E_L_E_T_ <>'*') AND "
cQuery += _cQuery
cQuery += " DC_ORIGEM = 'SC6' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->DC_ORIGEM,TRAB->DC_PRODUTO,TRAB->DC_LOCAL,TRAB->DC_LOCALIZ,TRANSFORM(TRAB->DC_QUANT,"@E 999,999,999.99"),TRAB->DC_PEDIDO,TRAB->DC_ITEM,TRAB->DC_SEQ})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016T   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SB1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016T(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sb1.html",_cResumo:="Local diferente de 01 e/ou 98 (SB1)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16011"))
_aDados := U_HYD016U()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCPAD')),_aDados[_nC,_nI,2])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016V(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016U   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SB1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016U()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(B1_LOCPAD!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT B1_COD,B1_LOCPAD FROM "+RetSqlName("SB1")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SB1")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->B1_COD,TRAB->B1_LOCPAD})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016V   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SB2_6          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016V(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sb2_6.html",_cResumo:="Valore(s) diferente(s) 0"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16012"))
_aDados := U_HYD016W()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QATU')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.VATU1')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QEMP')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.QEMPN')),_aDados[_nC,_nI,6])
		Aadd((oHtml:valByName('TB.RESERVA')),_aDados[_nC,_nI,7])
		Aadd((oHtml:valByName('TB.QPEDVEN')),_aDados[_nC,_nI,8])
		Aadd((oHtml:valByName('TB.NAOCLAS')),_aDados[_nC,_nI,9])
		Aadd((oHtml:valByName('TB.SALPEDI')),_aDados[_nC,_nI,10])
		Aadd((oHtml:valByName('TB.QACLASS')),_aDados[_nC,_nI,11])
		Aadd((oHtml:valByName('TB.QEMPSA')),_aDados[_nC,_nI,12])
		Aadd((oHtml:valByName('TB.QEMPPRE')),_aDados[_nC,_nI,13])
		Aadd((oHtml:valByName('TB.SALPPRE')),_aDados[_nC,_nI,14])
		Aadd((oHtml:valByName('TB.QEMPPRJ')),_aDados[_nC,_nI,15])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016X(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016W   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SB2_6          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016W()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(B2_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT B2_COD,B2_LOCAL,B2_QATU,B2_VATU1,B2_QEMP,B2_QEMPN,B2_RESERVA,B2_QPEDVEN,B2_NAOCLAS,B2_SALPEDI,B2_QACLASS,B2_QEMPSA,B2_QEMPPRE,B2_SALPPRE,B2_QEMPPRJ "
cQuery += " FROM "+RetSqlName("SB2")+" WHERE "+RetSqlName("SB2")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery
cQuery += "(B2_QATU<>'0' OR B2_VATU1<>'0' OR B2_QEMP<>'0' OR B2_QEMPN<>'0' OR B2_RESERVA<>'0' OR B2_QPEDVEN<>'0' OR B2_NAOCLAS<>'0' OR B2_SALPEDI<>'0' OR B2_QACLASS<>'0' OR B2_QEMPSA<>'0' OR B2_QEMPPRE<>'0' OR B2_SALPPRE<>'0' OR B2_QEMPPRJ<>'0') ORDER BY B2_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->B2_COD,TRAB->B2_LOCAL,TRANSFORM(TRAB->B2_QATU,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_VATU1,"@E 999,999.99999"),TRANSFORM(TRAB->B2_QEMP,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QEMPN,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_RESERVA,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QPEDVEN,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_NAOCLAS,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_SALPEDI,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QACLASS,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QEMPSA,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QEMPPRE,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_SALPPRE,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_QEMPPRJ,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016X   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016X(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc1.html",_cResumo:="Local diferente de 01 e/ou 98 (SC1)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16013"))
_aDados := U_HYD016Y()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016Z(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016Y   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016Y()
Local _nItens := 0,_aDado  := {},_aDad   := {},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C1_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C1_NUM,C1_ITEM,C1_PRODUTO,C1_QUANT,C1_LOCAL FROM "+RetSqlName("SC1")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SC1")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C1_NUM,TRAB->C1_ITEM,TRAB->C1_PRODUTO,TRANSFORM(TRAB->C1_QUANT,"@E 999,999,999.99"),TRAB->B2_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016Z   บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC2          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016Z(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc2.html",_cResumo:="Local diferente de 01 e/ou 98 (SC2)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16014"))
_aDados := U_HYD016AA()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.SEQUEN')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AB(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AA  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC2          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AA()
Local _nItens := 0,_aDado:= {},_aDad:= {},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C2_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C2_NUM,C2_ITEM,C2_SEQUEN,C2_PRODUTO,C2_LOCAL FROM "+RetSqlName("SC2")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SC2")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C2_NUM,TRAB->C2_ITEM,TRAB->C2_SEQUEN,TRAB->C2_PRODUTO,TRAB->C2_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AB  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC3          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AB(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc3.html",_cResumo:="Local diferente de 01 e/ou 98 (SC3)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16015"))
_aDados := U_HYD016AC()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AD(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AC  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC3          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AC()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C3_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C3_NUM,C3_ITEM,C3_PRODUTO,C3_QUANT,C3_LOCAL FROM "+RetSqlName("SC3")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SC3")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C3_NUM,TRAB->C3_ITEM,TRAB->C3_PRODUTO,TRANSFORM(TRAB->C3_QUANT,"@E 999,999,999.99"),TRAB->C3_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AD  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC6          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AD(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc6.html",_cResumo:="Local diferente de 01 e/ou 98 (SC6)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16016"))
_aDados := U_HYD016AE()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AF(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AE  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC6          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AE()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C6_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C6_NUM,C6_ITEM,C6_PRODUTO,C6_LOCAL FROM "+RetSqlName("SC6")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C6_NUM,TRAB->C6_ITEM,TRAB->C6_PRODUTO,TRAB->C6_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AF  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC6_1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AF(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc6_1.html",_cResumo:="Quantidade vendida < (Quantidade entregue + Quantidade empenhada)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16017"))
_aDados := U_HYD016AG()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QTDVEN')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QTDENT')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.QTDEMP')),_aDados[_nC,_nI,6])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AH(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AG  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC6_1          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AG()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C6_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C6_PRODUTO,C6_NUM,C6_ITEM,C6_QTDVEN,C6_QTDENT,C6_QTDEMP FROM "+RetSqlName("SC6")+" WHERE "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery
cQuery += "C6_QTDVEN < (C6_QTDENT+C6_QTDEMP) "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C6_PRODUTO,TRAB->C6_NUM,TRAB->C6_ITEM,TRANSFORM(TRAB->C6_QTDVEN,"@E 999,999,999.99"),TRANSFORM(TRAB->C6_QTDENT,"@E 999,999,999.99"),TRANSFORM(TRAB->C6_QTDEMP,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AH  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC7          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AH(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc7.html",_cResumo:="Local diferente de 01 e/ou 98 (SC7)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16018"))
_aDados := U_HYD016AI()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AJ(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AI  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC7          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AI()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C7_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C7_NUM,C7_ITEM,C7_PRODUTO,C7_LOCAL FROM "+RetSqlName("SC7")+" WHERE "
cQuery += _cQuery
cQuery+= ""+RetSqlName("SC7")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C7_NUM,TRAB->C7_ITEM,TRAB->C7_PRODUTO,TRAB->C7_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AJ  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC9          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AJ(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sc9.html",_cResumo:="Local diferente de 01 e/ou 98 (SC9)"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16019"))
_aDados := U_HYD016AK()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.SEQUEN')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AL(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AK  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ_SC9          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AK()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(C9_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT C9_PEDIDO,C9_ITEM,C9_PRODUTO,C9_SEQUEN,C9_LOCAL FROM "+RetSqlName("SC9")+" WHERE "
cQuery += _cQuery
cQuery += ""+RetSqlName("SC9")+".D_E_L_E_T_ <>'*' "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C9_PEDIDO,TRAB->C9_ITEM,TRAB->C9_PRODUTO,TRAB->C9_SEQUEN,TRAB->C9_LOCAL})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AL  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_01          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AL(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\est_01.html",_cResumo:="(SB2)Saldo inicial m๊s valor/Quantidade inicial m๊s-Custo unitแrio produto > 0.01 ou < -0.01"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16020"))
_aDados := U_HYD016AM()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QATU')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.VATU1')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.CM1')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AN(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AM  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_01          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AM()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(B2_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT B2_COD,B2_LOCAL,B2_QATU,B2_VATU1,B2_CM1 FROM "+RetSqlName("SB2")+" WHERE B2_QATU<>0 AND (B2_VATU1/B2_QATU-B2_CM1>0.01 OR B2_VATU1/B2_QATU-B2_CM1<-0.01) AND "
cQuery += _cQuery
cQuery += ""+RetSqlName("SB2")+".D_E_L_E_T_ <> '*' AND SUBSTRING(B2_COD,1,3)<>'MOD' ORDER BY B2_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->B2_COD,TRAB->B2_LOCAL,TRANSFORM(TRAB->B2_QATU,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_VATU1,"@E 999,999.99999"),TRANSFORM(TRAB->B2_CM1,"@E 999,999,999.99999")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AN  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_06          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AN(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\est_06.html",_cResumo:="(SB9)Saldo inicial m๊s valor/Quantidade inicial m๊s-Custo unitแrio produto > 0.01 ou < -0.01"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16021"))
_aDados := U_HYD016AO()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.DATA')),_aDados[_nC,nI,3])
		Aadd((oHtml:valByName('TB.QINI')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.VINI1')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AP(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AO  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_06          													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AO()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_cQuery:=""
Local _cAlmox:=GetMV("MV_ALM_WF")
_cAlmox:=StrTran(_cAlmox,"/","")

For i:=1 to Len(_cAlmox) STEP 2
	_cQuery+="(B9_LOCAL!='"+SUBS(_cAlmox,i,2)+"') AND "
Next

cQuery := " SELECT B9_COD,B9_LOCAL,B9_DATA,B9_QINI,B9_VINI1 FROM "+RetSqlName("SB9")+" WHERE "+RetSqlName("SB9")+".D_E_L_E_T_ <>'*' AND "
cQuery += _cQuery
cQuery += "B9_QINI>'0' AND B9_DATA='20090930' AND (B9_VINI1/B9_QINI-B9_CM1>'0.01' OR B9_VINI1/B9_QINI-B9_CM1<'-0.01') AND SUBSTRING(B9_COD,1,3)<>'MOD' ORDER BY B9_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->B9_COD,TRAB->B9_LOCAL,STOD(TRAB->B9_DATA),TRANSFORM(TRAB->B9_QINI,"@E 999,999,999.99"),TRANSFORM(TRAB->B9_VINI1,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AP  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_02        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AP(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\est_02.html",_cResumo:="Saldo Atual <> 0 ou quantide e valor atual < 0"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16022"))
_aDados := U_HYD016AQ()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QATU')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.VATU1')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.CM1')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.QFIM')),_aDados[_nC,_nI,6])
		Aadd((oHtml:valByName('TB.VFIM1')),_aDados[_nC,_nI,7])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AR(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AQ  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEST_02        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AQ()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:=""

cQuery := " SELECT B2_COD,B2_LOCAL,B2_QATU,B2_VATU1,B2_CM1,B2_QFIM,B2_VFIM1 FROM "+RetSqlName("SB2")
cQuery += " WHERE ((B2_QATU=0 AND B2_VATU1<>0) OR B2_QATU<0 OR B2_VATU1<0) "
cQuery += " AND "+RetSqlName("SB2")+".D_E_L_E_T_<>'*' AND SUBSTRING(B2_COD,1,3)<>'MOD' "
cQuery += " ORDER BY -ABS(B2_VATU1) "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->B2_COD,TRAB->B2_LOCAL,TRANSFORM(TRAB->B2_QATU,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_VATU1,"@E 999,999.99999"),TRANSFORM(TRAB->B2_CM1,"@E 999,999,999.99999"),TRANSFORM(TRAB->B2_QFIM,"@E 999,999,999.99"),TRANSFORM(TRAB->B2_VFIM1,"@E 999,999.99999")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AR  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSD4_SC2        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AR(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sd4_sc2.html",_cResumo:="OP fechada com empenho pendente"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16023"))
_aDados := U_HYD016AS()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.DTFIM')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AT(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AS  บAutor  ณAleson Clayton               บ Data ณ  19/09/11   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSD4_SC2        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AS()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:=""
_cDbMs := UPPER(TcGetDb())

cQuery := " SELECT D4_OP, D4_COD,D4_QUANT,C2_DATRF FROM "+RetSqlName("SD4")+","+RetSqlName("SC2")

If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	cQuery += " WHERE "+RetSqlName("SD4")+".D_E_L_E_T_ <>'*' AND D4_OP=C2_NUM+C2_ITEM+C2_SEQUEN AND "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*' "
else
	cQuery += " WHERE "+RetSqlName("SD4")+".D_E_L_E_T_ <>'*' AND D4_OP=C2_NUM||C2_ITEM||C2_SEQUEN AND "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*' " 
endif
If _cDbMs == "ORACLE"  //BANCO ORACLE
	cQuery += " AND C2_DATRF<>'       ' AND D4_QUANT<>'0' "
Else 				  //SQL POSTGRES
	cQuery += " AND C2_DATRF<>'' AND D4_QUANT<>'0' "
EndIf
cQuery += " ORDER BY D4_OP,D4_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->D4_OP,TRAB->D4_COD,TRANSFORM(TRAB->D4_QUANT,"@E 999,999,999.99"),STOD(TRAB->C2_DATRF)})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AT  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSBF	        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AT(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\_sbf.html",_cResumo:="Quantidade endere็ada < que zero e/ou empenho > quantidade"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16024"))
_aDados := U_HYD016AU()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCALIZ')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.EMPEN')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AV(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AU  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSBF	        													   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AU()
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:=""

cQuery := " SELECT BF_PRODUTO,BF_LOCAL,BF_LOCALIZ,BF_QUANT,BF_EMPENHO FROM "+RetSqlName("SBF")
cQuery += " WHERE "+RetSqlName("SBF")+".D_E_L_E_T_ <>'*' AND (BF_QUANT < 0 OR BF_EMPENHO > BF_QUANT) "
cQuery += " ORDER BY BF_PRODUTO "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->BF_PRODUTO,TRAB->BF_LOCAL,TRAB->BF_LOCALIZ,TRANSFORM(TRAB->BF_QUANT,"@E 999,999,999.99"),TRANSFORM(TRAB->BF_EMPENHO,"@E 999,999,999.99")})
	_nItens++
	
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AV  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณD4_QUANT<>B2_QEMP		FIRME										   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AV(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sd4_sb2.html"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16025"))
_aDados := U_HYD016AW()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,'FIRME')
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.DESCRI')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QEMP')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AX(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AW  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณD4_QUANT<>B2_QEMP FIRME											   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AW()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_nSoma:=0

cQuery +=" SELECT * FROM ("
cQuery +=" SELECT D4_COD,D4_LOCAL, SUM(D4_QUANT) TOTAL FROM "+RetSqlName("SD4")+" A,"+RetSqlName("SC2")+" B "
cQuery +=" WHERE A.D_E_L_E_T_ <> '*' AND B.D_E_L_E_T_ <> '*' AND (D4_OP=C2_NUM+C2_ITEM+C2_SEQUEN) AND C2_TPOP='F'
cQuery +=" GROUP BY D4_COD, D4_LOCAL) C
cQuery +=" INNER JOIN "+RetSqlName("SB2")+" D ON D.D_E_L_E_T_ <> '*' AND B2_COD = D4_COD AND B2_LOCAL = D4_LOCAL
cQuery +=" WHERE ROUND(CONVERT(DECIMAL(14,4),TOTAL),2,-1) <> ROUND(CONVERT(DECIMAL(14,4),B2_QEMP),2,-1)
cQuery +=" ORDER BY D4_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->D4_COD,Posicione("SB1",1,xFilial("SB1")+TRAB->D4_COD,"B1_DESC"),TRAB->D4_LOCAL,TRANSFORM(TRAB->TOTAL,"@E 9,999,999.99"),TRANSFORM(TRAB->B2_QEMP,"@E 9,999,999.99")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AX  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณD4_QUANT<>B2_QEMPPRE	PREVISTA		   							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AX(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sd4_sb2.html"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16026"))
_aDados := U_HYD016AY()

for _nC := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,'PREVISTA')
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.DESCRI')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QEMP')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016AZ(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AY  บAutor  ณAleson Clayton               บ Data ณ  04/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณD4_QUANT<>B2_QEMPPRE PREVISTA										   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AY()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},cQuery:="",_nSoma:=0

cQuery +=" SELECT * FROM ("
cQuery +=" SELECT D4_COD,D4_LOCAL, SUM(D4_QUANT) TOTAL FROM "+RetSqlName("SD4")+" A,"+RetSqlName("SC2")+" B "
cQuery +=" WHERE A.D_E_L_E_T_ <> '*' AND B.D_E_L_E_T_ <> '*' AND (D4_OP=C2_NUM+C2_ITEM+C2_SEQUEN) AND C2_TPOP='P'
cQuery +=" GROUP BY D4_COD, D4_LOCAL) C
cQuery +=" INNER JOIN "+RetSqlName("SB2")+" D ON D.D_E_L_E_T_ <> '*' AND B2_COD = D4_COD AND B2_LOCAL = D4_LOCAL
cQuery +=" WHERE ROUND(CONVERT(DECIMAL(14,4),TOTAL),2,-1) <> ROUND(CONVERT(DECIMAL(14,4),B2_QEMPPRE),2,-1)
cQuery +=" ORDER BY D4_COD "
TCQUERY cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->D4_COD,Posicione("SB1",1,xFilial("SB1")+TRAB->D4_COD,"B1_DESC"),TRAB->D4_LOCAL,TRANSFORM(TRAB->TOTAL,"@E 9,999,999.99"),TRANSFORM(TRAB->B2_QEMPPRE,"@E 9,999,999.99")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016AZ  บAutor  ณAleson Clayton               บ Data ณ  21/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2_SC6 OP aberta com Pedidos ja fechados							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016AZ(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc2_sc6.html",_cResumo:="OP aberta com Pedidos ja fechados"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16027"))
_aDados := U_HYD016BA()

for _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.PEDIDO')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.ITEMPV')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,5])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BB(aPar)
Return

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BA  บAutor  ณAleson Clayton               บ Data ณ  21/05/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2_SC6 OP aberta com Pedidos ja fechados							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BA()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""  

If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	_cQuery := " SELECT C2_NUM,C2_ITEM,C2_SEQUEN OP,C2_PEDIDO,C2_ITEMPV,C6_ITEMOP,C6_NUMOP,C2_LOCAL,C2_QUANT FROM "+RetSqlName("SC2")
	_cQuery += " INNER JOIN "+RetSqlName("SC6")+" ON C2_PEDIDO=C6_NUMOP AND C2_ITEMPV=C6_ITEMOP "
	_cQuery += " WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*' AND "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' AND (C6_QTDVEN=C6_QTDENT OR C6_BLQ='R') "
	_cQuery += " AND C2_PEDIDO<>'' AND C2_DATRF='' "
	_cQuery += " ORDER BY C2_PEDIDO,C2_ITEMPV "  
else
	_cQuery := " SELECT C2_NUM||C2_ITEM||C2_SEQUEN OP,C2_PEDIDO,C2_ITEMPV,C6_ITEMOP,C6_NUMOP,C2_LOCAL,C2_QUANT FROM "+RetSqlName("SC2")+" "
	_cQuery += " INNER JOIN "+RetSqlName("SC6")+" ON C2_PEDIDO=C6_NUMOP AND C2_ITEMPV=C6_ITEMOP "
	_cQuery += " WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*' AND "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' AND (C6_QTDVEN=C6_QTDENT OR C6_BLQ='R') "
	_cQuery += " AND C2_PEDIDO<>'     ' AND C2_DATRF='       ' "
	_cQuery += " ORDER BY C2_PEDIDO,C2_ITEMPV "     
endif
TCQUERY _cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	
	AADD(_aDad,{TRAB->OP,TRAB->C2_PEDIDO,TRAB->C2_ITEMPV,TRAB->C2_LOCAL,TRANSFORM(TRAB->C2_QUANT,"@E 999,999,999.99")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BB  บAutor  ณAleson Clayton               บ Data ณ  22/06/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSB1_SG1 Produto comprado com estrutura							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BB(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sb1_sg1.html",_cResumo:="Produto comprado com estrutura"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16028"))
_aDados := U_HYD016BC()

for _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.DESC')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.NACIMP')),_aDados[_nC,_nI,4])
	Next
	//U_FINALIZA(1)
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BD(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BC  บAutor  ณAleson Clayton               บ Data ณ  22/06/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSB1_SG1 Produto comprado com estrutura							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BC()
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT DISTINCT B1_COD,B1_DESC,B1_IMPORT,G1_COD FROM "+RetSqlName("SB1")+","+RetSqlName("SG1")
_cQuery += " WHERE "+RetSqlName("SB1")+".D_E_L_E_T_ <>'*' AND "+RetSqlName("SG1")+".D_E_L_E_T_ <>'*' AND B1_PRODSBP='C' "
_cQuery += " AND B1_COD=G1_COD "
_cQuery += " ORDER BY B1_COD "
TCQUERY _cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	
	AADD(_aDad,{TRAB->B1_COD,TRAB->B1_DESC,'COMPRADO',IIF(TRAB->B1_IMPORT=='S','IMPORTADO','NACIONAL')})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DBSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BD  บAutor  ณAleson Clayton               บ Data ณ  25/06/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2_SC6_ PV por OP com produto(s) e/ou quantidade diferentes		   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BD(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc2_sc6_.html",_cResumo:="PV por OP com produto(s) e/ou quantidade diferentes"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16029"))
_aDados := U_HYD016BE()

for _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PEDSC2')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.ITESC2')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.PROSC2')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QTDSC2')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.PEDSC6')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.ITESC6')),_aDados[_nC,_nI,6])
		Aadd((oHtml:valByName('TB.PROSC6')),_aDados[_nC,_nI,7])
		Aadd((oHtml:valByName('TB.QTDSC6')),_aDados[_nC,_nI,8])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BF(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BE  บAutor  ณAleson Clayton               บ Data ณ  22/06/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2_SC6 PV por OP com produto(s) e/ou quantidade diferentes		   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BE()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT C2_NUM,C2_ITEM,C2_PRODUTO,C2_QUANT,C6_NUM,C6_ITEM,C6_PRODUTO,C6_QTDVEN FROM "+RetSqlName("SC2")+","+RetSqlName("SC6")
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
_cQuery += " WHERE C2_PEDIDO=C6_NUM AND C2_ITEMPV=C6_ITEM AND (C2_PRODUTO<>C6_PRODUTO OR C2_QUANT<>C6_QTDVEN) AND C2_DATRF='' " 
Else
_cQuery += " WHERE C2_PEDIDO=C6_NUM AND C2_ITEMPV=C6_ITEM AND (C2_PRODUTO<>C6_PRODUTO OR C2_QUANT<>C6_QTDVEN) AND C2_DATRF='       ' " 
Endif
_cQuery += " AND C2_TPOP<>'P' AND "+RetSqlName("SC2")+".D_E_L_E_T_<>'*' AND "+RetSqlName("SC6")+".D_E_L_E_T_ <>'*' "
_cQuery += " ORDER BY C2_NUM "
TCQUERY _cQuery NEW ALIAS "TRAB"

While !TRAB->(EOF())
	
	AADD(_aDad,{TRAB->C2_NUM,TRAB->C2_ITEM,C2_PRODUTO,C2_QUANT,C6_NUM,C6_ITEM,C6_PRODUTO,C6_QTDVEN})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BF  บAutor  ณAleson Clayton               บ Data ณ  23/07/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSB2_SBF (B2_QATU-B2_QACALSS)<>BF_QUANT		   					   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BF(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sb2_sbf.html",_cResumo:="Diferen็a de Estoque"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16030"))
_aDados := U_HYD016BG()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PROD')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.DESC')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.QTDSB2')),_aDados[_nC,_nI,4])
		Aadd((oHtml:valByName('TB.QTDCLA')),_aDados[_nC,_nI,5])
		Aadd((oHtml:valByName('TB.QTDSBF')),_aDados[_nC,_nI,6])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BI(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BG  บAutor  ณAleson Clayton               บ Data ณ  23/07/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSB2_SBF (B2_QATU-B2_QACALSS)<>BF_QUANT							   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BG()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT * FROM ( "
_cQuery += " SELECT BF_PRODUTO,BF_LOCAL,SUM(BF_QUANT) TOTAL FROM "+RetSqlName("SBF")+" A WHERE A.D_E_L_E_T_<>'*' "
_cQuery += " GROUP BY BF_PRODUTO,BF_LOCAL) B "
_cQuery += " INNER JOIN "+RetSqlName("SB2")+" C ON C.D_E_L_E_T_<>'*' AND B2_COD=BF_PRODUTO AND B2_LOCAL=BF_LOCAL "
_cQuery += " WHERE TOTAL<>B2_QATU-B2_QACLASS "
TCQUERY _cQuery NEW ALIAS "TRAB"

While !TRAB->(EOF())
	AADD(_aDad,{TRAB->B2_COD,Posicione("SB1",1,xFilial("SB1")+TRAB->B2_COD,"B1_DESC"),TRAB->B2_LOCAL,Transform(TRAB->B2_QATU,"@E 999,999,999.99"),Transform(TRAB->B2_QACLASS,"@E 999,999,999.99"),;
	Transform(TRAB->TOTAL,"@E 999,999,999.99")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo
If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BI  บAutor  ณAleson Clayton               บ Data ณ  11/10/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2 e SD3 Produtos em Elabora็ใo e a Contabilidade SC2	   		   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BI(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc2_sd3.html",_cResumo:="Produtos em Elabora็ใo e a Contabilidade SC2"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16031"))
_aDados := U_HYD016BJ()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.OP')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.VALOR')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.C2VALOR')),_aDados[_nC,_nI,3])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BK(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BJ  บAutor  ณAleson Clayton               บ Data ณ  11/10/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณSC2 e SD3 Produtos em Elabora็ใo e a Contabilidade SC2			   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BJ()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery :=" SELECT * FROM ("                                                          
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	_cQuery +=" SELECT OP, VALOR, (SELECT C2_VINI1 FROM "+RetSqlName("SC2")+" WHERE C2_NUM+C2_ITEM+C2_SEQUEN = OP AND D_E_L_E_T_<>'*' AND C2_EMISSAO >= '20090101') C2_VALOR FROM( "
else
	_cQuery +=" SELECT OP, VALOR, (SELECT C2_VINI1 FROM "+RetSqlName("SC2")+" WHERE C2_NUM||C2_ITEM||C2_SEQUEN = OP AND D_E_L_E_T_<>'*' AND C2_EMISSAO >= '20090101') C2_VALOR FROM( "
Endif
_cQuery +=" SELECT OP, SUM(VALOR) VALOR FROM "
_cQuery +=" ( "
_cQuery +=" SELECT D3_OP AS OP, (D3_CUSTO1) AS VALOR FROM "+RetSqlName("SD3")
_cQuery +=" WHERE D_E_L_E_T_<>'*' "
_cQuery +=" AND SUBSTRING(D3_CF,1,1) = 'R' "
_cQuery +=" AND D3_EMISSAO <= '"+DTOS(GetMv("MV_ULMES"))+"' "
_cQuery +=" UNION ALL "
_cQuery +=" SELECT D3_OP AS OP, (D3_CUSTO1*-1) AS VALOR FROM "+RetSqlName("SD3")
_cQuery +=" WHERE D_E_L_E_T_<>'*' "
_cQuery +=" AND (SUBSTRING(D3_CF,1,1) = 'D' OR SUBSTRING(D3_CF,1,1) = 'P') "
_cQuery +=" AND D3_EMISSAO <= '"+DTOS(GetMv("MV_ULMES"))+"' "
_cQuery +=" ) "
_cQuery +=" DERIVED "
_cQuery +=" GROUP BY OP "
_cQuery +=" ) "
_cQuery +=" DERIVED "
_cQuery +=" ) "
_cQuery +=" DERIVED "
_cQuery +=" WHERE ABS(VALOR-C2_VALOR)>0.00001 "
_cQuery +=" ORDER BY OP "
TCQUERY _cQuery NEW ALIAS "TRAB"
DbGotop()

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->OP,Transform(TRAB->C2_VALOR,"@E 999,999,999.99999"),Transform(TRAB->VALOR,"@E 999,999,999.99999")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BK  บAutor  ณAleson Clayton               บ Data ณ  19/10/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณAF9 e SD3 Produtos em Elabora็ใo e a Contabilidade AF9	   		   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BK(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\af9_sd3.html",_cResumo:="Produtos em Elabora็ใo e a Contabilidade AF9"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16032"))
_aDados := U_HYD016BL()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PRJO')),_aDados[_nC,_nI,1])
		Aadd((oHtml:valByName('TB.TASK')),_aDados[_nC,_nI,2])
		Aadd((oHtml:valByName('TB.VALOR')),_aDados[_nC,_nI,3])
		Aadd((oHtml:valByName('TB.AF9VALOR')),_aDados[_nC,_nI,4])
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BM(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BL  บAutor  ณAleson Clayton               บ Data ณ  19/10/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณAF9 e SD3 Produtos em Elabora็ใo e a Contabilidade AF9			   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BL()
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT * FROM ( "
_cQuery += " SELECT PROJETO,TAREFA, VALOR,(SELECT SUM(AF9_VINI1) FROM "+RetSqlname("AF9")+" AF9,"+RetSqlname("AF8")+" AF8 WHERE AF9_PROJET = PROJETO AND "
_cQuery += " AF9_TAREFA = TAREFA AND AF9_REVISA = AF8_REVISA AND AF8_PROJET = PROJETO AND AF9.D_E_L_E_T_<>'*' AND AF8.D_E_L_E_T_<>'*') AF9_VALOR FROM( "
_cQuery += " SELECT PROJETO, TAREFA, SUM(VALOR) VALOR FROM "
_cQuery += " ( "
_cQuery += " SELECT D3_PROJPMS AS PROJETO,D3_TASKPMS AS TAREFA, (D3_CUSTO1) AS VALOR FROM "+RetSqlName("SD3")
_cQuery += " WHERE D_E_L_E_T_<>'*' "
_cQuery += " AND SUBSTRING(D3_CF,1,1) = 'R' "
_cQuery += " AND D3_EMISSAO <= '"+DTOS(GetMv("MV_ULMES"))+"' "
_cQuery += " UNION ALL "
_cQuery += " SELECT D3_PROJPMS AS PROJETO,D3_TASKPMS AS TAREFA, (D3_CUSTO1*-1) AS VALOR FROM "+RetSqlName("SD3")
_cQuery += " WHERE D_E_L_E_T_<>'*' "
_cQuery += " AND (SUBSTRING(D3_CF,1,1) = 'D' OR SUBSTRING(D3_CF,1,1) = 'P') "
_cQuery += " AND D3_EMISSAO <= '"+DTOS(GetMv("MV_ULMES"))+"' "
_cQuery += " ) "
_cQuery += " DERIVED "
_cQuery += " GROUP BY PROJETO,TAREFA "
_cQuery += " ) "
_cQuery += " DERIVED "
_cQuery += " ) "
_cQuery += " DERIVED "
_cQuery += " WHERE ABS(VALOR-AF9_VALOR)>0.00001 "
_cQuery += " ORDER BY PROJETO,TAREFA "
TCQUERY _cQuery NEW ALIAS "TRAB"
DbGotop()

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->PROJETO,TRAB->TAREFA,Transform(TRAB->AF9_VALOR,"@E 999,999,999.99999"),Transform(TRAB->VALOR,"@E 999,999,999.99999")})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado
/*                                     

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BM  บAutor  ณAndre Lanzieri	              บ Data ณ  06/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณOPs intermediarias abertas com OP pai fechada						   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function HYD016BM(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\sc2_sc2.html",_cResumo:="OPs intermediarias abertas com OP pai fechada"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16033"))
_aDados := U_HYD016BN()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.NUM')),_aDados[_nC,_nI,1])	 	// C2_NUM
		Aadd((oHtml:valByName('TB.ITEM')),_aDados[_nC,_nI,2]) 		// C2_ITEM
		Aadd((oHtml:valByName('TB.SEQUEN')),_aDados[_nC,_nI,3])   // C2_SEQUEN
		Aadd((oHtml:valByName('TB.PRODUTO')),_aDados[_nC,_nI,4])  // C2_PRODUTO
		Aadd((oHtml:valByName('TB.QUANT')),_aDados[_nC,_nI,5])    // C2_QUANT
		Aadd((oHtml:valByName('TB.QUJE')),_aDados[_nC,_nI,6])     // C2_QUJE  
		Aadd((oHtml:valByName('TB.VATU1')),_aDados[_nC,_nI,7])    // C2_VATU1
	Next
	U_FINALIZA(cEnviaPara)
Next                      
U_HYD016BO(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BN  บAutor  ณAndre Lanzieri               บ Data ณ  06/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณOPs intermediarias abertas com OP pai fechada                        บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BN()
Local _cDbMs := UPPER(TcGetDb())
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT * FROM "+RetSqlName("SC2")+" A WHERE A.D_E_L_E_T_ <> '*'"

If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	_cQuery += " AND C2_SEQUEN > '001' AND C2_DATRF=''"
	_cQuery += " AND (SELECT count(*) total FROM "+RetSqlName("SC2")+" B WHERE B.C2_NUM=A.C2_NUM AND B.C2_ITEM=A.C2_ITEM AND B.D_E_L_E_T_<>'*' AND C2_SEQUEN = '001' AND C2_DATRF<>'') > 0 "
else
	_cQuery += " AND C2_SEQUEN > '001' AND C2_DATRF='       '"
	_cQuery += " AND (SELECT count(*) total FROM "+RetSqlName("SC2")+" B WHERE B.C2_NUM=A.C2_NUM AND B.C2_ITEM=A.C2_ITEM AND B.D_E_L_E_T_<>'*' AND C2_SEQUEN = '001' AND C2_DATRF<>'       ') > 0 " 
endif
TCQUERY _cQuery NEW ALIAS "TRAB"
DbGotop()

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->C2_NUM,TRAB->C2_ITEM,TRAB->C2_SEQUEN,TRAB->C2_PRODUTO,TRAB->C2_QUANT,TRAB->C2_QUJE,TRAB->C2_VATU1})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado

                               
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BO  บAutor  ณAndre Lanzieri	              บ Data ณ  10/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEMPENHO EM PROJETO FECHADO                                           บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function HYD016BO(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\afj_af8.html",_cResumo:="EMPENHO EM PROJETO FECHADO"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16034"))
_aDados := U_HYD016BP()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.PROJ')),_aDados[_nC,_nI,1])	 	// AFJ_PROJETO
		Aadd((oHtml:valByName('TB.TAR')),_aDados[_nC,_nI,2]) 		// AFJ_TAREFA
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,3])   // AFJ_COD
		Aadd((oHtml:valByName('TB.QEMP')),_aDados[_nC,_nI,4])  // AFJ_QEMP
		Aadd((oHtml:valByName('TB.QATU')),_aDados[_nC,_nI,5])    // AFJ_QATU
	
	Next
	U_FINALIZA(cEnviaPara)
Next
U_HYD016BQ(aPar)
Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BP  บAutor  ณAndre Lanzieri               บ Data ณ  10/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณEMPENHO EM PROJETO FECHADO                                           บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BP()
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT * FROM "+RetSqlName("AFJ")+" AJ ,"+RetSqlName("AF8")+" A8 "
_cQuery += " WHERE AFJ_QEMP > AFJ_QATU AND AFJ_PROJET = AF8_PROJET  "
_cQuery += " AND AF8_FASE = '10' "
_cQUery += " AND AJ.D_E_L_E_T_ <> '*' AND A8.D_E_L_E_T_ <> '*' "
_cQUery += " ORDER BY AFJ_PROJET,AFJ_TAREFA,AFJ_COD
TCQUERY _cQuery NEW ALIAS "TRAB"
DbGotop()

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->AFJ_PROJETO,TRAB->AFJ_TAREFA,TRAB->AFJ_COD,TRAB->AFJ_QEMP,TRAB->AFJ_QATU})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado

/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BQ  บAutor  ณAndre Lanzieri               บ Data ณ  10/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณDIFERENวA ENTRE EMPENHOS DE PROJETO AFJ X SB2                        บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
*/
User Function HYD016BQ(aPar)
Local _aDados,_cPag,_cArq:="\WORKFLOW\HTML\afj_sb2.html",_cResumo:="DIFERENวA ENTRE EMPENHOS DE PROJETO AFJ X SB2"
Private oProcess,oHTML
IIF(Len(aPar)>2,cEnviaPara:=aPar[3],cEnviaPara:=GetMv("MV_J16035"))
_aDados := U_HYD016BR()

For _nc := 1 to Len(_aDados)
	U_INICIALIZA(_cArq,,_cResumo)
	_cPag := "Pแgina "+cValToChar(_nC)+" de "+cValToChar(Len(_aDados))
	oHtml:valByName('cPAG',_cPag)
	For _nI := 1 to Len(_aDados[_nC])
		Aadd((oHtml:valByName('TB.COD')),_aDados[_nC,_nI,1])	 	// AFJ_COD
		Aadd((oHtml:valByName('TB.LOCAL')),_aDados[_nC,_nI,2]) 	// AFJ_LOCAL
		Aadd((oHtml:valByName('TB.TOTAL')),_aDados[_nC,_nI,3])    // TOTAL
		Aadd((oHtml:valByName('TB.QEMPPRJ')),_aDados[_nC,_nI,4])  // B2_QEMPPRJ
	
	
	Next
	U_FINALIZA(cEnviaPara)
Next

Return
/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BR  บAutor  ณAndre Lanzieri               บ Data ณ  10/12/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณDIFERENวA ENTRE EMPENHOS DE PROJETO AFJ X SB2                        บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BR()
Local _nItens:=0,_aDado:={},_aDad:={},_cQuery:=""

_cQuery := " SELECT * FROM ( "
_cQuery += " SELECT AFJ_COD,AFJ_LOCAL, SUM(AFJ_QEMP-AFJ_QATU) TOTAL FROM "+RetSqlName("AFJ")+" A "
_cQuery += " WHERE A.D_E_L_E_T_ <> '*' "
_cQuery += " GROUP BY AFJ_COD, AFJ_LOCAL) B "
_cQuery += " INNER JOIN "+RetSqlName("SB2")+" C ON C.D_E_L_E_T_ <> '*' AND B2_COD = AFJ_COD AND B2_LOCAL = AFJ_LOCAL  "
_cQuery += " WHERE ROUND(CONVERT(DECIMAL(12,2),TOTAL),2,-1) <> B2_QEMPPRJ  "
TCQUERY _cQuery NEW ALIAS "TRAB"
DbGotop()

WHILE !TRAB->(EOF())
	AADD(_aDad,{TRAB->AFJ_COD,TRAB->AFJ_LOCAL,TRAB->TOTAL,TRAB->B2_QEMPPRJ})
	_nItens++
	If _nItens > 250
		AADD(_aDado,_aDad)
		_aDad := {}
		_nItens:=0
	EndIf
	TRAB->(DbSkip())
EndDo

If Len(_aDad) > 0
	AADD(_aDado,_aDad)
EndIf
TRAB->(DbCloseArea())
_nItens:=0
Return _aDado


/*
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณHYD016BH  บAutor  ณAleson Clayton               บ Data ณ  29/06/12   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณManutencao de empenhos											   บฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function HYD016BH(aPar)
Local _cDbMs := UPPER(TcGetDb())
Local _cQuery:="",_nSoma:=0,_nCont:=0,_cArq:="\WORKFLOW\HTML\manutencao.html"
Private oProcess,oHTML

If Select('SX2') == 0
	RPCSetType( 3 )						//Nao consome licensa de uso
	RpcSetEnv('01','01',,,,GetEnvServer(),{ "SM2" })
	sleep( 5000 )						//Aguarda 5 segundos para que as jobs IPC subam.
	lAuto := .T.
Else
	WfPrepEnv(aPar[1],aPar[2],"HYD016BH")
EndIf

//VERIFICA A SE O D4_QUANT ESTA NEGATIVO E ZERA ELE
_cQuery += " SELECT R_E_C_N_O_ FROM "+RetsqlName("SD4")+" WHERE "+RetSqlName("SD4")+".D_E_L_E_T_<>'*' AND D4_QUANT < 0 "
TCQUERY _cQuery NEW ALIAS "TRAB"

While TRAB->(!EOF())
	DbSelectArea("SD4")
	DbGoto(TRAB->R_E_C_N_O_)
	If SD4->D4_QUANT < 0
		RecLock("SD4")
		SD4->D4_QUANT:=0
		DbUnLock("SD4")
		_nCont++
	Endif
	TRAB->(DbSkip())
Enddo
TRAB->(DbCloseArea())

//VERIFICA SE A OP JA FOI DELETADO E NO SDC AINDA HA REGISTROS NAO DELETADOS
_cQuery := " SELECT DC_ORIGEM,DC_PRODUTO,DC_LOCAL,DC_OP,R_E_C_N_O_ FROM "+RetsqlName("SDC")+" WHERE "+RetSqlName("SDC")+".D_E_L_E_T_<>'*' "
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	_cQuery += " AND DC_ORIGEM='SC2' AND (DC_OP) NOT IN (SELECT C2_NUM+C2_ITEM+C2_SEQUEN FROM "+RetSqlName("SC2")+" WHERE "+RetSqlName("SC2")+".D_E_L_E_T_<>'*') "
else
	_cQuery += " AND DC_ORIGEM='SC2' AND (DC_OP) NOT IN (SELECT C2_NUM||C2_ITEM||C2_SEQUEN FROM "+RetSqlName("SC2")+" WHERE "+RetSqlName("SC2")+".D_E_L_E_T_<>'*') "
endif
_cQuery += " ORDER BY DC_PRODUTO,DC_LOCAL,DC_OP "
TCQUERY _cQuery NEW ALIAS "TRAB"

While TRAB->(!EOF())
	DbSelectArea("SDC")
	DbGoto(TRAB->R_E_C_N_O_)
	RecLock("SDC")
	DBDelete()
	DbUnLock("SDC")
	TRAB->(DbSkip())
	_nCont++
Enddo
TRAB->(DbCloseArea())

//VERIFICA SE A OP JA FOI DELETADA E NO SD4 AINDA HA EMPENHO NAO DELETADOS
_cQuery := " SELECT R_E_C_N_O_,D4_COD,D4_LOCAL,D4_OP,D4_QUANT FROM "+RetsqlName("SD4")+" WHERE "+RetSqlName("SD4")+".D_E_L_E_T_ <>'*' "
If _cDbMs = "MSSQL" // BANCO MicroSoftSQL
	_cQuery += " AND (D4_OP) NOT IN (SELECT C2_NUM+C2_ITEM+C2_SEQUEN FROM "+RetSqlName("SC2")+""
else
	_cQuery += " AND (D4_OP) NOT IN (SELECT C2_NUM||C2_ITEM||C2_SEQUEN FROM "+RetSqlName("SC2")
endif
_cQuery += " WHERE "+RetSqlName("SC2")+".D_E_L_E_T_ <>'*') "
_cQuery += " ORDER BY D4_OP "
TCQUERY _cQuery NEW ALIAS "TRAB"

While TRAB->(!EOF())
	DbSelectArea("SD4")
	DbGoto(TRAB->R_E_C_N_O_)
	RecLock("SD4",.F.)
	DBDelete()
	DbUnlock("SD4")
	TRAB->(DbSkip())
	_nCont++
Enddo
TRAB->(DbCloseArea())

_cQuery +=" SELECT * FROM ("
_cQuery +=" SELECT D4_COD,D4_LOCAL, SUM(D4_QUANT) TOTAL FROM "+RetSqlName("SD4")+" A,"+RetSqlName("SC2")+" B "
_cQuery +=" WHERE A.D_E_L_E_T_ <> '*' AND B.D_E_L_E_T_ <> '*' AND (D4_OP=C2_NUM+C2_ITEM+C2_SEQUEN) AND C2_TPOP='F'
_cQuery +=" GROUP BY D4_COD, D4_LOCAL) C
_cQuery +=" INNER JOIN "+RetSqlName("SB2")+" D ON D.D_E_L_E_T_ <> '*' AND B2_COD = D4_COD AND B2_LOCAL = D4_LOCAL
_cQuery +=" WHERE ROUND(CONVERT(DECIMAL(14,4),TOTAL),2,-1) <> ROUND(CONVERT(DECIMAL(14,4),B2_QEMP),2,-1)
_cQuery +=" ORDER BY D4_COD "
TCQUERY _cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	DbSelectArea("SB2")
	DbSetOrder(1)
	If DbSeek(xFilial()+TRAB->B2_COD)
		RecLock("SB2")
		SB2->B2_QEMP:=TRAB->D4_QUANT
		DbUnLock("SB2")
		_nCont++
	Endif
	TRAB->(DBSkip())
EndDo
TRAB->(DbCloseArea())

_cQuery +=" SELECT * FROM ("
_cQuery +=" SELECT D4_COD,D4_LOCAL, SUM(D4_QUANT) TOTAL FROM "+RetSqlName("SD4")+" A,"+RetSqlName("SC2")+" B "
_cQuery +=" WHERE A.D_E_L_E_T_ <> '*' AND B.D_E_L_E_T_ <> '*' AND (D4_OP=C2_NUM+C2_ITEM+C2_SEQUEN) AND C2_TPOP='P'
_cQuery +=" GROUP BY D4_COD, D4_LOCAL) C
_cQuery +=" INNER JOIN "+RetSqlName("SB2")+" D ON D.D_E_L_E_T_ <> '*' AND B2_COD = D4_COD AND B2_LOCAL = D4_LOCAL
_cQuery +=" WHERE ROUND(CONVERT(DECIMAL(14,4),TOTAL),2,-1) <> ROUND(CONVERT(DECIMAL(14,4),B2_QEMPPRE),2,-1)
_cQuery +=" ORDER BY D4_COD "
TCQUERY _cQuery NEW ALIAS "TRAB"

WHILE !TRAB->(EOF())
	DbSelectArea("SB2")
	DbSetOrder(1)
	If DbSeek(xFilial()+TRAB->B2_COD)
		RecLock("SB2")
		SB2->B2_QEMPPRE:=TRAB->D4_QUANT
		DbUnLock("SB2")
		_nCont++
	Endif
	TRAB->(DBSkip())
EndDo
TRAB->(DbCloseArea())

If _nCont > 0
	oProcess := TWFProcess():New( "Registros", "de Querys" )
	oProcess:NewTask( "Registros de Querys", _cArq )
	oProcess:cSubject := "Registros de Querys da manuten็ใo do(s) empenho(s)"
	oHTML := oProcess:oHTML
	oProcess:cTo:= GETMV("MV_HYD016B")  //cEnviaPara
	oProcess:UserSiga := "000000"
	oProcess:Start()
	oProcess:Finish()
	oProcess:= nil
	oHTML := nil
	cEnviaPara := nil
Endif
Return

User Function INICIALIZA(_cArq,nOpcao,_cResumo)
oProcess := TWFProcess():New( "Registros", "de Querys" )
oProcess:NewTask( "Registros de Querys", _cArq )
If nOpcao == Nil
	oProcess:cSubject := _cResumo
Else
	If nOpcao == 'FIRME'
		oProcess:cSubject := "Registros de Querys Firme(s)"
	ElseIf nOpcao == 'PREVISTA'
		oProcess:cSubject := "Registros de Querys Prevista(s)"
	Endif
Endif
oHTML := oProcess:oHTML
oHtml:HtmlCode() 
Return

User Function FINALIZA(cEnviaPara)
oProcess:cTo:= cEnviaPara
oProcess:UserSiga := "000000"
oProcess:Start()
oProcess:Finish()
oProcess:= nil
oHTML := nil
cEnviaPara := nil
Return
