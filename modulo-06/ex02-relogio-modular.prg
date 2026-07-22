procedure Main()
    local tDataHora
    local cHoraFormatada

    do while .T.
        tDataHora := ObterHora()
        cHoraFormatada := FormatarHora(tDataHora)
        ExibirHora(cHoraFormatada)
        Sleep(1000.0)
        CLEAR SCREEN
    enddo

return

function ObterHora()
    local tDataHora := hb_DateTime()
return tDataHora

function FormatarHora(tDataHora)
    
return SubStr(hb_TToC(tDataHora, "HH:MM:SS.fff"),12, 8)

procedure ExibirHora(cHora)
    QOut(cHora)
return
