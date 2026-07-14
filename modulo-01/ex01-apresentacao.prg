REQUEST HB_CODEPAGE_PT850

PROCEDURE Main()
    LOCAL cNome := "Derli"
    LOCAL cCidade := "SÆo Paulo"

    hb_cdpSelect("PT850")

    QOut("===========================")
    QOut("  FICHA DE APRESENTA€ÇO    ")
    QOut("===========================")
    QOut(hb_StrFormat("Nome     : [%s]", cNome))
    QOut(hb_StrFormat("Cidade   : [%s]", cCidade))
    QOut("Curso    : Harbour/ADVPL")
    QOut("===========================")

RETURN
