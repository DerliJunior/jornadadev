#define PI 3.14159

procedure Main()
    local nAreaCirculo := Circulo(4)
    local nHipotenusa := Hipotenusa(3, 4)
    local nImc := Imc(130, 1.88)

    QOut(LTrim(Str(nAreaCirculo, 10, 2)))
    QOut(LTrim(Str(nHipotenusa, 10, 2)))
    QOut(LTrim(Str(nImc, 10, 2)))
return 

function Circulo(nRaio)
    local nArea := PI * (nRaio ^ 2)
return nArea

function Hipotenusa(nCatetoOposto, nCatetoAdjascente)
    local nHipotenusa := Sqrt(nCatetoOposto ^ 2 + nCatetoAdjascente ^ 2)
return nHipotenusa

function Imc(nPeso, nAltura)
    local nImc := nPeso / (nAltura ^ 2)
return nImc