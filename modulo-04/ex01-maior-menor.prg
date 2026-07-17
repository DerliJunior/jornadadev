procedure Main()
    local nNumero1, nNumero2, nMaior, nMenor

    input "Digite o 1ø n£mero:" to nNumero1
    input "Digite o 2ø n£mero:" to nNumero2

    nMaior := nNumero1
    nMenor := nNumero2

    if nNumero1 == nNumero2 
        QOut("Ambos sÆo iguais")
    elseif nNumero1 < nNumero2
        nMenor := nNumero1
        nMaior := nNumero2

        MensagemMaiorMenor(nMaior, nMenor)
    else
        MensagemMaiorMenor(nMaior, nMenor)
    endif

return

function MensagemMaiorMenor(nMaior, nMenor)
    QOut("************************")
    QOut(hb_StrFormat("O maior ‚ %d", nMaior))
    QOut(hb_StrFormat("O menor ‚ %d", nMenor))
    QOut("************************")
return NIL