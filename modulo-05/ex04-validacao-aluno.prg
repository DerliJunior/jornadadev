REQUEST HB_CODEPAGE_PT850

procedure Main()
    local cNome 
    local cDisc 
    local nNota1
    local nNota2
    local nMedia

    hb_cdpSelect("PT850")

    cNome := NomeAlunoValido()
    cDisc := DisciplinaValida()
    nNota1 := NotaAlunoValida()
    nNota2 := NotaAlunoValida()
    nMedia := CalculaMediaAluno(nNota1, nNota2)

    QOut("Nome do aluno: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1: " + LTrim(Str(nNota1, 10, 2)))
    QOut("Nota 2: " + LTrim(Str(nNota2, 10, 2)))
    QOut("Média: " + LTrim(Str(nMedia, 10, 2)))
return

function NomeAlunoValido()
    local cNome := ""

    accept "Digite o nome do aluno: " to cNome

    do while .t.
        if Len(Trim(cNome)) > 0
            exit
        else
            accept "Nome inválido. Informe um nome válido: " to cNome
        endif
    enddo
return cNome

function DisciplinaValida()
    local cDisc := ""

    accept "Digite a disciplina com 3 letras maiúsculas, ex: MAT, POR, FIS): " to cDisc

    do while .t.
        if Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            exit
        else
            accept "Disciplina inválida. Deve ter 3 letras maiúsculas, ex: MAT, POR, FIS: " to cDisc
        endif
    enddo
return cDisc

function NotaAlunoValida()
    local nNota1 := 0

    accept "Digite uma nota de 0 a 10: " to nNota1

    do while .t.
        nNota1 := Val(nNota1)

        if nNota1 >= 0 .and. nNota1 <= 10
            exit
        else
            accept "Nota inválida. Informe um valor entre 0 e 10: " to nNota1
        endif
    enddo

return nNota1

function CalculaMediaAluno(nNota1, nNota2)
    local nMedia := (nNota1 + nNota2) / 2
return nMedia