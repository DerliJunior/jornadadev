#define DESCONTO 12.5
#define HEADER "----------------------------------------"

procedure Main()
    local cNome, dDataNascimento, nIdade, nTotal, nPreco
    local lIdoso := .T.
    local nValorDesconto := 0
    
    SET DATE BRITISH
    SET CENTURY ON

    accept "Digite um nome: " to cNome
    accept "Digite um data nascimento: " to dDataNascimento

    input "Digite um preco: " to nPreco

    nTotal := nPreco
    
    nIdade := Floor(Int(Date() - CToD(dDataNascimento)) / 365)

    lIdoso := nIdade > 60

    if lIdoso
        nValorDesconto := nPreco * (DESCONTO / 100.0)
        nTotal := nPreco - nValorDesconto
    endif

    QOut(HEADER)
    QOut("Client: " + cNome)
    QOut("Idade: " + LTrim(Str(nIdade)))
    QOut("Preço: R$" + LTrim(Str(nPreco, 10,2)))
    QOut("Desconto para Idoso (60+): " + LTrim(Str(if(lIdoso, DESCONTO, 0), 5, 2)) + "%")
    QOut("Total: R$" + LTrim(Str(nTotal, 10, 2)))
    QOut(HEADER)
return