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

## Positividade

Leva em consideração a variável **I**
Representado por Lvx
Representa uma nota

Equação:

```
LVx = 10 * cos[(-12a * I)]
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
LVx = 10 * cos[(-12a * 0a)]
LVx = 10 * cos[(-12a * 0)]
LVx = 10 * cos[0]
LVx = 10 * 1
LVx = 10
```
Exemplo 1:

```
I = 0,5a
```
Reprodução

```
LVx = 10 * cos[(-12a * 0,5a)]
LVx = 10 * cos[(-12*7,5 * 0,5*7,5)]
LVx = 10 * cos[-90 * 3.75]
LVx = 10 * cos[-337.5]
LVx = 10 * 0.92387953
LVx = 9,23
```




