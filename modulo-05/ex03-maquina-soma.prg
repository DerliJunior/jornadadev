procedure Main()
    local nValor := 0
    local nTotal := 0
    local nContador := 0

    while .T.
        accept "Digite um número para somar (0 para sair): " to nValor
        nValor := Val(nValor)

        if  nValor== 0
            exit
        endif

        nTotal += nValor
        nContador += 1
    enddo

    QOut("Total da soma: " + AllTrim(Str(nTotal, 10, 2)))
    QOut("Quantidade de valores somados: " + AllTrim(Str(nContador, 10, 0)))
return 