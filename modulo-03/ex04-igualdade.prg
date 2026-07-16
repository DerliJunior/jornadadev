// Exercício 4 ? = vs ==
// Explique e demonstre com código a diferença entre = e == em Harbour. Escreva um
// exemplo em que o resultado dos dois é diferente.
// Dica: compare uma string longa com um pedaço do seu começo (ex.: "Harbour" e "Harb" ).

procedure Main()
    local cNome := "harbour"
    local cNomeEncurtado := SubStr(cNome, 1, 3)
    local nNumero := 120999
    local nNumeroEncurtado := 120

    QOut("Comparação entre = e == em Harbour")

    QOut("=")
    QOut("Serve tanto como atribuição de valores quanto igualdade, mas não é boa pratica e é recomendado utilizar o padrão (  :=  )")
    QOut('Também possui uma difículdade em comparar valores do tipo caracter (strings), pois só verifica se valor a esquerda contém com o valor a direita, ex: "Harbour" = "Harb".')
    QOut("É recomendado seu uso em casos específicos como em consultas de bancos de dados DBF e funciona meio que parecido com o like 'Harbour%', buscando o cmeço pelo termo.")
    QOut(cNome = cNomeEncurtado)
    QOut(nNumero = nNumeroEncurtado)

    QOut("==")
    QOut("Serve para como operador de igualdade e verifica se todo o conteúdo de ambos os lados são iguais antes de retornar True (.T.)")
    QOut(cNome == cNomeEncurtado)
    QOut(nNumero == nNumeroEncurtado)

    QOut("Por convenção, na linguagem Harbour é recomendado sempre utilizar o operador == para toda operação de igualdade, exceto o caso específico com consulta DBF.")

return