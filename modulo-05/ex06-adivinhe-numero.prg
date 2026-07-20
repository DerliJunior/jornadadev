REQUEST HB_CODEPAGE_PT850

procedure Main()
    local nNumeroSecreto := HB_RandomInt(1, 100)
    local nTentativa := 1
    local nPalpite := 0

    hb_cdpSelect("PT850")

    for nTentativa := 1 to 7
        accept "Adivinhe o número secreto (entre 1 e 100): " to nPalpite
        nPalpite := Int(Val(nPalpite))

        if nPalpite == nNumeroSecreto .OR. nTentativa == 7
            exit
        endif

        if nPalpite < nNumeroSecreto
            QOut("O número secreto é maior que " + AllTrim(Str(nPalpite, 10, 0)) + ".")
            loop
        else
            QOut("O número secreto é menor que " + AllTrim(Str(nPalpite, 10, 0)) + ".")
            loop
        endif
    next

    QOut("Fim do jogo! O número secreto era: " + AllTrim(Str(nNumeroSecreto, 10, 0)))

return