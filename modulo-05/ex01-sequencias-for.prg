procedure Main()
    programaA()
    ProgramaB()
    ProgramaC()
return

function ProgramaA()
    local nI
    for nI = 1 to 100
        QOut("Imprimido: " + Alltrim(Str(nI)))
    next

return NIL

function ProgramaB()
    local nI
    for nI := -50 to 50
        QOut("Imprimido: " + Alltrim(Str(nI)))
    next
return NIL

function ProgramaC()
    local nI
    for nI := 80 to 5 step -1
        QOut("Imprimido: " + Alltrim(Str(nI)))
    next
return NIL

