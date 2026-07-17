procedure Main()
    local nNumero1, nNumero2, nMaior, nMenor

    input "Digite o 1° número: " to nNumero1
    input "Digite o 2° número: " to nNumero2

    nMaior := nNumero1
    nMenor := nNumero2

    if nNumero1 == nNumero2 
        QOut("Ambos são iguais")
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
    QOut(hb_StrFormat("O maior é %d", nMaior))
    QOut(hb_StrFormat("O menor é %d", nMenor))
    QOut("************************")
return NIL