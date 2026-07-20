#define IDADE_FAIXA1 25
#define IDADE_FAIXA2 40
#define IDADE_FAIXA3 60
#define IDADE_FAIXA4 61

#define VALOR_FAIXA1 180.00
#define VALOR_FAIXA2 260.00
#define VALOR_FAIXA3 380.00
#define VALOR_FAIXA4 520.00

#define VALOR_DEPENDENTE 90.00

REQUEST HB_CODEPAGE_PT850

procedure Main()
    local planoSaude

    hb_langSelect("PT")
    hb_cdpSelect("PT850")

    planoSaude := PlanoSaude()

    QOut("O valor do plano de saúde é: R$ " + AllTrim(Str(planoSaude, 10, 2)))

return

function PlanoSaude()
    local nIdade := 0
    local nQuantidadeDependentes := 0
    local cValorEntrada := ""
    local nValorPlano := 0

    ACCEPT "Digite a idade do beneficiário: " TO cValorEntrada
    nIdade := Int(Val(cValorEntrada))

    if nIdade <= IDADE_FAIXA1
        nValorPlano := VALOR_FAIXA1
    elseif nIdade <= IDADE_FAIXA2
        nValorPlano := VALOR_FAIXA2
    elseif nIdade <= IDADE_FAIXA3
        nValorPlano := VALOR_FAIXA3
    elseif nIdade >= IDADE_FAIXA4
        nValorPlano := VALOR_FAIXA4
    endif

    ACCEPT "Digite a quantidade de dependentes: " TO cValorEntrada
    nQuantidadeDependentes := Val(cValorEntrada)

    nValorPlano := nValorPlano + CalculaValorDependente(nQuantidadeDependentes)

return nValorPlano

function CalculaValorDependente(nQuantidadeDependente)
return nQuantidadeDependente * VALOR_DEPENDENTE