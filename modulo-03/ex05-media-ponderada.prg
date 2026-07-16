#define PESO1 1
#define PESO2 2
#define PESO3 3
#define PESO4 4

procedure Main()
    local cAluno
    local cInput
    local nNota1 := 0
    local nNota2 := 0
    local nNota3 := 0
    local nNota4 := 0
    local nMedia := 0

    accept "Digite o nome do aluno: " to cAluno

    accept "Digite a nota 1: " to cInput 
    nNota1 = Val(cInput)

    accept "Digite a nota 2: " to cInput 
    nNota2 = Val(cInput)

    accept "Digite a nota 3: " to cInput 
    nNota3 = Val(cInput)

    accept "Digite a nota 4: " to cInput 
    nNota4 = Val(cInput)

    nMedia := (nNota1 * PESO1) + (nNota2 * PESO2) + (nNota3 * PESO3) + (nNota4 * PESO4) / (PESO1 + PESO2 + PESO3 + PESO4)
    
    QOut(hb_StrFormat("A média ponderada do aluno %s é %s", cAluno, Str(nMedia, 10, 2)))
    QOut(hb_StrFormat("Nota 1: %s tem o Peso %d", Str(nNota1, 5, 2), PESO1))
    QOut(hb_StrFormat("Nota 2: %s tem o Peso %d", Str(nNota2, 5, 2), PESO2))
    QOut(hb_StrFormat("Nota 3: %s tem o Peso %d", Str(nNota3, 5, 2), PESO3))
    QOut(hb_StrFormat("Nota 4: %s tem o Peso %d", Str(nNota4, 5, 2), PESO4))
return