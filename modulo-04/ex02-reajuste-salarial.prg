#define LIMITE_SALARIO_1000 1000
#define LIMITE_SALARIO_2000 2000
#define LIMITE_SALARIO_4000 4000
#define PERCENTUAL_15 15.0
#define PERCENTUAL_12 12.0
#define PERCENTUAL_8 8.0
#define PERCENTUAL_5 5.0

procedure Main()
    local nSalario
    local nNovoSalario

    Input "Digite o sal rio do colaborador: " to nSalario

    do while nSalario <= 0
        Input "Digite um valor maior que 0 para o colaborador: " to nSalario
    end if

    nNovoSalario := AjusteSalarial(nSalario)

    // QOut("Sal rio atual: R$" + LTrim(Str(nSalario, 10, 2)))
    QOut("Novo sal rio: R$" + LTrim(Str(nNovoSalario, 10, 2)))
    // QOut("Aumento de: " + LTrim(Str(CalcularAumentoPercentil(nSalario, nNovoSalario), 10, 2)) + "%")
return

function AjusteSalarial(nSalario)
    if nSalario < LIMITE_SALARIO_1000
        return nSalario + (nSalario * (PERCENTUAL_15 / 100.0))
    elseif nSalario <= LIMITE_SALARIO_2000
        return nSalario + (nSalario * (PERCENTUAL_12 / 100.0))
    elseif nSalario <= LIMITE_SALARIO_4000
        return nSalario + (nSalario * (PERCENTUAL_8 / 100.0))
    else
        return nSalario + (nSalario * (PERCENTUAL_5 / 100.0))
    endif 

return NIL

// function CalcularAumentoPercentil(nSalarioAntigo, nSalarioNovo)
//     local percentil := ((nSalarioNovo * 100.0) / nSalarioAntigo) - 100.0
// return percentil

