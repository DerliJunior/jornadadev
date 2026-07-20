procedure Main()
    local nValor := 0

    while .T.
        accept "Informe um valor inteiro (0 ou negativo para sair): " to nValor

        nValor := Int(Val(nValor))

        if nValor <= 0
            exit
        endif

        QOut("O dobro de " + Alltrim(Str(nValor)) + " ‚: " + Alltrim(Str(nValor * 2)))
    enddo

return