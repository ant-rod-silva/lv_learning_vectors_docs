## COMPONENTES

```
              LVx
       ▪𒀸𒀸𒀸𒀸𒀸𒀸𒀸𒀸▶-----------
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

|  Termo   | Definição                                                                               | Equação                    |
|----------|-----------------------------------------------------------------------------------------|----------------------------|
| α        | Ângulo que representa o passo padrão de aprendizagem.                                   | 7.5°                       | 
| I        | Variação Angular Total do vetor. Varia conforme as avaliações do Professor/Tutor.       | I = (n/2) * α              |
| θ        | nota mínima                                                                             | θ = -90                    |
| θ        | nota máxima                                                                             | θ = 0                      |
| LVx      | Relaciona-se à positividade de desempenho do aluno. Expressa a nota em cada atividade.  | LVx = 10 * cos[(-12a + I)] |
| LVy      | Relaciona-se à negatividade do seu desempenho.                                          | LVy = 10 * sen[(-12a + I)] |
| Fator β  | Pode indicar o nível de desempenho do aluno no curso online.                            | β = LVx / LVy              | 


## VARIÁVEL I

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
|  5      |  i = 5/2 * 7.5  |  18.75        |  I = 2,5a            |
|  6      |  i = 6/2 * 7.5  |  22.5         |  I = 3a              |
|  7      |  i = 7/2 * 7.5  |  26.25        |  I = 3,5a            |
|  8      |  i = 8/2 * 7.5  |  30           |  I = 4a              |
|  9      |  i = 9/2 * 7.5  |  33.75        |  I = 4,5a            |
|  10     |  i = 10/2 * 7.5 |  37.5         |  I = 5a              |
|  11     |  i = 11/2 * 7.5 |  41.25        |  I = 5,5a            |
|  12     |  i = 12/2 * 7.5 |  45           |  I = 6a              |
|  13     |  i = 13/2 * 7.5 |  48.75        |  I = 6,5a            |
|  14     |  i = 14/2 * 7.5 |  52.5         |  I = 7a              |
|  15     |  i = 15/2 * 7.5 |  56.25        |  I = 7,5a            |
|  16     |  i = 16/2 * 7.5 |  60           |  I = 8a              |
|  17     |  i = 17/2 * 7.5 |  63.75        |  I = 8,5a            |
|  18     |  i = 18/2 * 7.5 |  67.5         |  I = 9a              |
|  19     |  i = 19/2 * 7.5 |  71.25        |  I = 9,5a            |
|  20     |  i = 20/2 * 7.5 |  75           |  I = 10a             |
|  21     |  i = 21/2 * 7.5 |  78.75        |  I = 10,5a           |
|  22     |  i = 22/2 * 7.5 |  82.5         |  I = 11a             |
|  23     |  i = 23/2 * 7.5 |  86.25        |  I = 11,5a           |
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


| n  |  Calculo i    | Valor angulo  | Equação simplificada | Cálculo LVx                    | LVx                | Nota   |
|----|---------------|---------------|----------------------|--------------------------------|--------------------|--------|
| 0  |  (0/2) * 7.5  |  0            |  I = 0a              | LVx = 10 * cos[(-12a + 0a)]    | 0                  | 0.00   |
| 1  |  (1/2) * 7.5  |  3.75         |  I = 0,5a            | LVx = 10 * cos[(-12a + 0,5a)]  | 0.6540312923014304 | 0.70   |
| 2  |  (2/2) * 7.5  |  7.5          |  I = a               | LVx = 10 * cos[(-12a + a)]     | 1.305261922200517  | 1.31   |
| 3  |  (3/2) * 7.5  |  11.25        |  I = 1,5a            | LVx = 10 * cos[(-12a + 1,5a)]  | 1.9509032201612833 | 1.95   |
| 4  |  (4/2) * 7.5  |  15           |  I = 2a              | LVx = 10 * cos[(-12a + 2a)]    | 2.5881904510252074 | 2.59   |
| 5  |  (5/2) * 7.5  |  18.75        |  I = 2,5a            | LVx = 10 * cos[(-12a + 2,5a)]  | 3.2143946530316168 | 3.21   |
| 6  |  (6/2) * 7.5  |  22.5         |  I = 3a              | LVx = 10 * cos[(-12a + 3a)]    | 3.8268343236508984 | 3.83   |
| 7  |  (7/2) * 7.5  |  26.25        |  I = 3,5a            | LVx = 10 * cos[(-12a + 3,5a)]  | 4.422886902190013  | 4.42   |
| 8  |  (8/2) * 7.5  |  30           |  I = 4a              | LVx = 10 * cos[(-12a + 4a)]    | 5.000000000000001  | 5.00   |
| 9  |  (9/2) * 7.5  |  33.75        |  I = 4,5a            | LVx = 10 * cos[(-12a + 4,5a)]  | 5.555702330196023  | 5.56   |
| 10 |  (10/2) * 7.5 |  37.5         |  I = 5a              | LVx = 10 * cos[(-12a + 5a)]    | 6.087614290087206  | 6.09   |
| 11 |  (11/2) * 7.5 |  41.25        |  I = 5,5a            | LVx = 10 * cos[(-12a + 5,5a)]  | 6.593458151000688  | 6.59   |
| 12 |  (12/2) * 7.5 |  45           |  I = 6a              | LVx = 10 * cos[(-12a + 6a)]    | 7.0710678118654755 | 7.07   |
| 13 |  (13/2) * 7.5 |  48.75        |  I = 6,5a            | LVx = 10 * cos[(-12a + 6,5a)]  | 7.518398074789774  | 7.52   |
| 14 |  (14/2) * 7.5 |  52.5         |  I = 7a              | LVx = 10 * cos[(-12a + 7a)]    | 7.933533402912351  | 7.93   |
| 15 |  (15/2) * 7.5 |  56.25        |  I = 7,5a            | LVx = 10 * cos[(-12a + 7,5a)]  | 8.314696123025453  | 8.31   |
| 16 |  (16/2) * 7.5 |  60           |  I = 8a              | LVx = 10 * cos[(-12a + 8a)]    | 8.660254037844387  | 8.66   |
| 17 |  (17/2) * 7.5 |  63.75        |  I = 8,5a            | LVx = 10 * cos[(-12a + 8,5a)]  | 8.968727415326882  | 8.97   |
| 18 |  (18/2) * 7.5 |  67.5         |  I = 9a              | LVx = 10 * cos[(-12a + 9a)]    | 9.238795325112868  | 9.24   |
| 19 |  (19/2) * 7.5 |  71.25        |  I = 9,5a            | LVx = 10 * cos[(-12a + 9,5a)]  | 9.469301294951057  | 9.47   |
| 20 |  (20/2) * 7.5 |  75           |  I = 10a             | LVx = 10 * cos[(-12a + 10a)]   | 9.659258262890683  | 9.66   |
| 21 |  (21/2) * 7.5 |  78.75        |  I = 10,5a           | LVx = 10 * cos[(-12a + 10,5a)] | 9.807852804032304  | 9.81   |
| 22 |  (22/2) * 7.5 |  82.5         |  I = 11a             | LVx = 10 * cos[(-12a + 11a)]   | 9.914448613738104  | 9.91   |
| 23 |  (23/2) * 7.5 |  86.25        |  I = 11,5a           | LVx = 10 * cos[(-12a + 11,5a)] | 9.978589232386035  | 9.98   |
| 24 |  (24/2) * 7.5 |  90           |  I = 12a             | LVx = 10 * cos[(-12a + 12a)]   | 10.0               | 10.00  |


```python
print("Cálculo de LVx e nota")
n = 8
a = 7.5
i = (n/2) * 7.5
print(i)
cosseno = math.cos(  math.radians(-12 * a + i)  )
LVx = 10 * cosseno
print(LVx)
nota = round(LVx, 2)
print(nota)
```

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

|  Item            | Valor CP |
|------------------|----------|
| Muito bom        | 4        | 
| bom              | 3        | 
| Regular          | 2        | 
| Fraco            | 1        | 
| Não satisfatório | 0        | 
| Neutro           | -        | 

### Variável m

Responsável por definir a quantidade mínima de interações no fórum (Configurável dentro das configurações do módulo Fórum)
Tem relação com os LVGifs/Coeficiente de Passo
