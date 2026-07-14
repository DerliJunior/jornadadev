REQUEST HB_CODEPAGE_PT850

PROCEDURE Main()
    LOCAL cData
    LOCAL cHora
    LOCAL cNome := "Derli"
    LOCAL cCidade := "São Paulo"

    SET DATE BRITISH
    SET CENTURY ON

    hb_cdpSelect("PT850")

    cData := DToC(Date())
    cHora := TIME()

    QOut("===========================")
    QOut("  FICHA DE APRESENTAÇÃO    ")
    QOut("===========================")
    QOut(hb_StrFormat("Nome     : %s", cNome))
    QOut(hb_StrFormat("Cidade   : %s", cCidade))
    QOut("Curso    : Harbour/ADVPL")
    QOut(hb_StrFormat("Data     : %s", cData))
    QOut(hb_StrFormat("Hora     : %s", cHora))
    QOut("===========================")

RETURN