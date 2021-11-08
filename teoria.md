## COMPONENTES

```
              LVx
       ▪𒀸𒀸𒀸𒀸𒀸𒀸𒀸𒀸▶,,,,,,,,,,,,        
       𒁹𒑳  𒁹 Θ         :         "
       𒁹__𒑳𒁹           :        "
       𒁹 I  𒑳          :       "
  LVy  𒁹      𒑳        :      "
       𒁹        𒑳      :     "
       𒁹  |lv|=10 𒑳    :    " 
       𒁹            𒑳  :  "
       ▼,,,,,,,,,,,,,,,◢:"
       |               "
       |             "
       |           "
       |         "
       |      "
       |   "
       |"
```

- LVx Relaciona-se à positividade de desempenho do aluno. Expressa a nota naquela atividade.
- LVy Relaciona-se à negatividade do seu desempenho.

## VARIÁVEL I = 

VARIAÇÃO ANGULAR TOTAL DO VETOR

A DIREÇÃO DO LV VARIA DE ACORDO COM O VALOR DE **I**, DADA EM FUNCAO DO ANGULO **a** QUE FOI SELECIONADO EMPIRICAMENTE POR DIVIDIR O ANGULO DE 90 GRAUS EM **n** PARTES IGUAIS
A DETERMINACAO DOS 25 POSSIVEIS VALORES SE DA POR:

```
i = (n/2) * a
```

sendo que

```
n >=0 e n <= 24
a = 7.5
```


ESSES 25 POSSIVEIS VALORES FACILITAM A ESPECIFICACAO DO LV

```
i = (n/2) * a
```

| Para n  |  Calculo i      | Valor angulo  | Equação simplificada |
|---------|-----------------|---------------|----------------------|
|  0      |  i = 0/2 * 7.5  |  0            |  I = 0a              |
|  1      |  i = 1/2 * 7.5  |  3.75         |  I = 0,5a            |
|  2      |  i = 2/2 * 7.5  |  7.5          |  I = a               |
|  3      |  i = 3/2 * 7.5  |  11.25        |  I = 1,5a            |
|  4      |  i = 4/2 * 7.5  |  15           |  I = 2a              |
|  24     |  i = 24/2 * 7.5 |  90           |  I = 12a             |


## Positividade de desempenho

Componente horizontal do vetor LV
Leva em consideração a variável **I**
Representado por Lvx
Representa uma nota

Equação:

```
LVx = 10 * cos[(-12a + I)]
```

sendo que

```
I = Variação Angular Total do vetor
a = 7.5
```

Exemplo 1:

```
I = 0a
```
Reprodução

```
LVx = 10 * cos[(-12a + 0a)]
LVx = 10 * cos[(-12*7.5) + (0*7.5)]
LVx = 10 * cos[-90]
LVx = 10 * 0
LVx = 0
```

Exemplo 2:

```
I = 0,5a
```
Reprodução

```
LVx = 10 * cos[(-12a) + (0.5a)]
LVx = 10 * cos[(-12*7.5) + (0.5*7.5)]
LVx = 10 * cos[-90 + 3.75]
LVx = 10 * cos[-86.25]
LVx = 10 * 0.06540313
LVx = 0,6540313
```

Exemplo 3:

```
I = 11,5a
```
Reprodução

```
LVx = 10 * cos[(-12a) + (11,5a)]
LVx = 10 * cos[(-12*7,5) + (11,5*7,5)]
LVx = 10 * cos[-90 + 86,25]
LVx = 10 * cos[-3.75]
LVx = 10 * 0.99785892
LVx = 9,97
```

Exemplo 4:

```
I = 12a
```
Reprodução

```
LVx = 10 * cos[(-12a) + (12a)]
LVx = 10 * cos[(-12*7,5) + (12*7,5)]
LVx = 10 * cos[-90 + 90]
LVx = 10 * cos[0]
LVx = 10 * 1
LVx = 10
```

| Para n  |  Calculo i      | Valor angulo  | Equação simplificada | Cálculo LVx                   | Nota     |
|---------|-----------------|---------------|----------------------|-------------------------------|----------|
|  0      |  i = 0/2 * 7.5  |  0            |  I = 0a              | LVx = 10 * cos[(-12a + 0a)]   | 0        |
|  1      |  i = 1/2 * 7.5  |  3.75         |  I = 0,5a            | LVx = 10 * cos[(-12a + 0,5a)] | 0.70     |
|  24     |  i = 24/2 * 7.5 |  90           |  I = 12a             | LVx = 10 * cos[(-12a + 12a)]  | 10       |


## Negatividade de desempenho

Componente vertical do vetor LV
Leva em consideração a variável **I**
Representado por Lvx
Representa uma nota

Equação:

```
LVy = 10 * sen[(-12a + I)]
```

sendo que

```
I = Variação Angular Total do vetor
a = 7.5
```

## Fórum LV

### Coeficiente de Passo

menção qualitativa

Valor atribuído pelo professor a uma mensagem no Fórum.

Representada graficamente pelos LVGifs

Constituída por seis itens:
- Muito bom (CP = 4)
- Bom (CP = 3)
- Regular (CP = 2)
- Fraco (CP = 1)
- Não satisfatório  (CP = 0)
- Neutro ( - )

### Variável m

Responsável por definir a quantidade mínima de interações no fórum (Configurável dentro das configurações do módulo Fórum)
Tem relação com os LVGifs/Coeficiente de Passo
