#define SOMA "+"
#define SUBTRACAO "-"
#define MULTIPLICACAO "*"
#define DIVISAO "/"
#define POTENCIA "^"
#define RAIZ "R"

REQUEST HB_CODEPAGE_PT850

procedure Main()
    hb_langSelect("PT")
    hb_cdpSelect("PT850")

    Calculadora()
return

function Calculadora()
    local nResultado
    local cValorEntrada := ""
    local cValorOperando := ""
    local cOperador := ""
    local nA := 0
    local nB := 0

    ACCEPT "Digite o 1° valor: " TO cValorEntrada
    nA := Val(cValorEntrada)

    QOut("Escolha a operação: + (Soma), - (Sub), * (Mult), / (Div), ^ (Potencia), R (Raiz Quadrada)")
    ACCEPT "Escolha a operacao: " TO cOperador

    if Upper(cOperador) != "R"
        ACCEPT "Digite o 2° valor: " TO cValorOperando
        nB := Val(cValorOperando)
    endif

    QOut("--- RESULTADO ---")

    do case
        case cOperador == SOMA
            nResultado := Soma(nA, nB)

            QOut("Soma: " + AllTrim(Str(nResultado, 10, 2)))
            
        case cOperador == SUBTRACAO
            nResultado := Subtracao(nA, nB)

            QOut("Subtração: " + AllTrim(Str(nResultado, 10, 2)))
        case cOperador == MULTIPLICACAO
            nResultado := Multiplicacao(nA, nB)

            QOut("Multiplicação: " + AllTrim(Str(nResultado, 10, 2)))
            
        case cOperador == DIVISAO
            nResultado := Divisao(nA, nB)

            if nResultado == NIL
                QOut("Erro: Divisão por zero nao é permitida!")
            else
                QOut("Divisão: " + AllTrim(Str(nResultado, 10, 2)))
            endif
            
        case cOperador == POTENCIA
            nResultado := Potencia(nA, nB)

            QOut("Potência: " + AllTrim(Str(nResultado, 10, 2 )))
            
        case Upper(cOperador) == RAIZ
            nResultado := RaizQuadrada(nA)

            if nResultado == NIL
                QOut("Erro: Raiz quadrada de número negativo nao é permitida!")
            else
                QOut("Raiz Quadrada: " + AllTrim(Str(nResultado, 10, 2)))
            endif
            
        otherwise
            QOut("Opção inválida!") 
    endcase
return NIL

function Soma(nA, nB)
return nA + nB

function Subtracao(nA, nB)
return nA - nB

function Multiplicacao(nA, nB)
return nA * nB

function Divisao(nA, nB)
    if !(nB == 0)
        return nA / nB
    endif
return NIL

function Potencia(nA, nB)
return nA ^ nB

function RaizQuadrada(nA)
    if !(nA < 0)
        return Sqrt(nA)
    endif
return NIL