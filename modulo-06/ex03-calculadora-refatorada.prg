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

procedure Calculadora()
    local nResultado
    local cOperador := ""
    local nA := 0
    local nB := 0

    nA := LerNumero()

    QOut("Escolha a operação: + (Soma), - (Sub), * (Mult), / (Div), ^ (Potencia), R (Raiz Quadrada)")
    ACCEPT "Escolha a operacao: " TO cOperador

    if Upper(cOperador) != "R"
        nB := LerNumero()
    endif

    nResultado := Calcular(nA, nB, cOperador)

    MostrarResultado(nA, nB, cOperador, nResultado)
return

function LerNumero()
    local cEntrada := ""
    local nNumero := 0

    accept "Digite um número: " to cEntrada
    nNumero := Val(cEntrada)
return nNumero

function Soma(nA, nB)
return nA + nB

function Subtracao(nA, nB)
return nA - nB

function Multiplicacao(nA, nB)
return nA * nB

function Divisao(nA, nB)
    if nB == 0
        return .F.
    endif
return nA / nB

function Potencia(nA, nB)
return nA ^ nB

function RaizQuadrada(nA)
    if nA < 0
        return .F.
    endif
return Sqrt(nA)

function Calcular(nA, nB, cOperador)
    local nResultado

    do case
        case cOperador == SOMA
            nResultado := Soma(nA, nB)

        case cOperador == SUBTRACAO
            nResultado := Subtracao(nA, nB)

        case cOperador == MULTIPLICACAO
            nResultado := Multiplicacao(nA, nB)

        case cOperador == DIVISAO
            nResultado := Divisao(nA, nB)
        
        case cOperador == POTENCIA
            nResultado := Potencia(nA, nB)

        case Upper(cOperador) == RAIZ
            nResultado := RaizQuadrada(nA)
        
            otherwise
            QOut("Opção inválida!") 
    endcase
return nResultado

procedure MostrarResultado(nA, nB, cOperador, nResultado)
    local cCalculo := MontarOperacao(nA, nB, cOperador, nResultado)

    QOut("--- RESULTADO ---")
    do case
        case cOperador == SOMA
            QOut(cCalculo)

        case cOperador == SUBTRACAO
            QOut(cCalculo)

        case cOperador == MULTIPLICACAO
            QOut(cCalculo)

        case cOperador == DIVISAO
            if ValType(nResultado) == "L"
                QOut("Erro: Divisão por zero nao é permitida!")
            else
                QOut(cCalculo)
            endif
        
        case cOperador == POTENCIA
            QOut(cCalculo)
        
        case Upper(cOperador) == RAIZ
            if ValType(nResultado) == "L"
                QOut("Erro: Raiz quadrada de número negativo nao é permitida!")
            else
                QOut(cCalculo)
            endif
    end case

    QOut("-----------------")
return

function MontarOperacao(nA, nB, cOperador, nResultado)
    LOCAL cFmtA, cFmtB, cFmtRes, cFmtFinal

    if cOperador == "R"
        cFmtRes := iif(nResultado == Int(nResultado), "%d", "%.2f")

        return hb_StrFormat("Raiz quadrada de %d é " + cFmtRes, nA, nResultado)
    endif

    cFmtA   := iif(nA == Int(nA), "%d", "%.2f")
    cFmtB   := iif(nB == Int(nB), "%d", "%.2f")
    cFmtRes := iif(nResultado == Int(nResultado), "%d", "%.2f")
    cFmtFinal := cFmtA + " %s " + cFmtB + " = " + cFmtRes

return hb_StrFormat(cFmtFinal, nA, cOperador, nB, nResultado)


procedure TEST_MONTAR_OPERACAO_CALCULO_TRUE()
    QOut( "=== TESTES DE OPERAÇÕES MATEMÁTICAS ===" )
    QOut( "" )

    // 1. SOMA "+"
    QOut( MontarOperacao( 10, 5, "+", 15 ) )             // Inteiros
    QOut( MontarOperacao( 10.5, 2.3, "+", 12.8 ) )       // Decimais

    // 2. SUBTRAÇÃO "-"
    QOut( MontarOperacao( 20, 8, "-", 12 ) )             // Inteiros
    QOut( MontarOperacao( 15.75, 5.25, "-", 10.5 ) )    // Decimais

    // 3. MULTIPLICAÇÃO "*"
    QOut( MontarOperacao( 4, 5, "*", 20 ) )              // Inteiros
    QOut( MontarOperacao( 2.5, 4.2, "*", 10.5 ) )       // Decimais

    // 4. DIVISÃO "/"
    QOut( MontarOperacao( 10.6, 2, "/", 5.3 ) )         // Decimal e Inteiro
    QOut( MontarOperacao( 10, 4, "/", 2.5 ) )           // Inteiros gerando Decimal
    QOut( MontarOperacao( 100, 5, "/", 20 ) )           // Inteiros exatos

    // 5. POTÊNCIA "^"
    QOut( MontarOperacao( 2, 3, "^", 8 ) )              // Inteiros
    QOut( MontarOperacao( 2.5, 2, "^", 6.25 ) )         // Decimal elevado a Inteiro

    // 6. RAIZ "R" (nA = Número, nB = Índice da raiz ou N/A)
    QOut( MontarOperacao( 16, 2, "R", 4 ) )             // Raiz quadrada exata
    QOut( MontarOperacao( 2, 2, "R", 1.41 ) )           // Raiz quadrada decimal
    QOut( MontarOperacao( 27, 3, "R", 3 ) )             // Raiz cúbica
return