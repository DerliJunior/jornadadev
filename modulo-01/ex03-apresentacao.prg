REQUEST HB_CODEPAGE_PT850

PROCEDURE Main()
    LOCAL cCidade := "São Paulo"
    LOCAL cNome := "Derli"

    hb_cdpSelect("PT850")

    QOut("===========================")
    QOut("  FICHA DE APRESENTAÇÃO    ")
    QOut("===========================")
    QOut(hb_StrFormat("Nome     : %s", cNome))
    QOut(hb_StrFormat("Cidade   : %s", cCidade))
    QOut("Curso    : Harbour/ADVPL")
    QOut("===========================")

RETURN