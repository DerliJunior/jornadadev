REQUEST HB_CODEPAGE_PT850

procedure Main()
    local cProcessar := "S"

    hb_cdpSelect("PT850")

    while .T.
        ProcessarAluno()
        accept "Deseja processar outro aluno? (S/N): " to cProcessar
        cProcessar := Upper(Trim(cProcessar))

        if cProcessar == "N"
            QOut("Encerrando o programa...")
            exit
        elseif cProcessar != "S"
            while .T.
                accept "Opção inválida. Deseja processar outro aluno? (S/N): " to cProcessar
                cProcessar := Upper(Trim(cProcessar))

                if cProcessar == "N" .OR. cProcessar == "S"
                    exit
                endif
            enddo

            if cProcessar == "N"
                QOut("Encerrando o programa...")
                exit
            endif
        endif
    enddo

return

function ProcessarAluno()
    local cNome := NomeAlunoValido()
    local cDisc := DisciplinaValida()
    local nNota1 := NotaAlunoValida()
    local nNota2 := NotaAlunoValida()
    local nMedia := CalculaMediaAluno(nNota1, nNota2)

    QOut("Nome do aluno: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Nota 1: " + LTrim(Str(nNota1, 10, 2)))
    QOut("Nota 2: " + LTrim(Str(nNota2, 10, 2)))
    QOut("Média: " + LTrim(Str(nMedia, 10, 2)))
    QOut("")
return NIL


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