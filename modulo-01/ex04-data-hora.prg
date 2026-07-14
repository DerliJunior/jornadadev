REQUEST HB_CODEPAGE_PT850

PROCEDURE Main()
    LOCAL cData
    LOCAL cHora := TIME()
    LOCAL cNome := "Derli"
    LOCAL cCidade := "SÆo Paulo"

    SET DATE BRITISH
    SET CENTURY ON

    hb_cdpSelect("PT850")

    cData := DToC(Date())

    QOut("===========================")
    QOut("  FICHA DE APRESENTA€ÇO    ")
    QOut("===========================")
    QOut(hb_StrFormat("Nome     : %s", cNome))
    QOut(hb_StrFormat("Cidade   : %s", cCidade))
    QOut("Curso    : Harbour/ADVPL")
    QOut(hb_StrFormat("Data     : %s", cData))
    QOut(hb_StrFormat("Hora     : %s", cHora))
    QOut("===========================")
    
RETURN