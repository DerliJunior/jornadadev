procedure Main()
    local nMes

    input "Digite o número do mês de 1 a 12 (Janeiro até Dezembro): " to nMes

    QOut(ExtrairNomeMes(nMes))
    
    QOut(ExtrairNomeMesSimplificado(nMes))
return

function ExtrairNomeMes(nMes)
    local cNomeMes

    do case
        case nMes == 1
            cNomeMes := "Janeiro"
        case nMes == 2
            cNomeMes := "Fevereiro"
        case nMes == 3
            cNomeMes := "Março"
        case nMes == 4
            cNomeMes := "Abril"
        case nMes == 5
            cNomeMes := "Maio"
        case nMes == 6
            cNomeMes := "Junho"
        case nMes == 7
            cNomeMes := "Julho"
        case nMes == 8
            cNomeMes := "Agosto"
        case nMes == 9
            cNomeMes := "Setembro"
        case nMes == 10
            cNomeMes := "Outubro"
        case nMes == 11
            cNomeMes := "Novembro"
        case nMes == 12
            cNomeMes := "Dezembro"
        otherwise
            cNomeMes := "Mês inválido"
    endcase
return cNomeMes

function ExtrairNomeMesSimplificado(nMes)
    local cNomeMes := if(!(nMes < 1 .OR. nMes > 12), NToCMonth(nMes), "Mês inválido")
return cNomeMes
