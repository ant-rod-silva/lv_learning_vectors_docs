## DEFINIÇÃO

LVs são representações geométricas vetoriais concebidos para auxiliar o processo de avaliação em Ambientes Virtuais de Aprendizagem (AVA).
Os LVs reúnem aspectos qualitativos e quantitativos no acompanhamento de desempenho do aluno/usuário.

## COMPONENTES

```
              LVx
       ▪𒀸𒀸𒀸𒀸𒀸𒀸𒀸𒀸▶----------- nota = 10.0
       𒁹𒑳  𒁹 Θ         :         "
       𒁹__𒑳𒁹           :        "
       𒁹 I  𒑳          :       "
  LVy  𒁹      𒑳        :      "
       𒁹        𒑳      :     "
       𒁹    |LV|  𒑳    :    " 
       𒁹            𒑳  :  "
       ▼,,,,,,,,,,,,,,,◢:"
       |               " 7.07
       |             "
       |           "
       |         "
       |      "
       |   "
       |"
     nota = 0.0

```

## TERMOS E DEFINICOES

* **α:** Ângulo que representa o passo padrão de aprendizagem.
* **I:** Variação Angular Total do vetor. Varia conforme as avaliações do Professor/Tutor.
* **θ:** nota mínima OU nota máxima.
* **LVx:** Expressa a nota em cada atividade.
* **LVy:** Relaciona-se à negatividade do seu desempenho.
* **Fator β:** Métrica qualitativa não-linear para suporte ao acompanhamento da aprendizagem do aluno. Sua unidade de medida é o mili LV (mLV), de valor máximo  β ≥ 3,78, ou 378 mLV (valor limítrofe a partir do qual se espera encontrar os alunos de “Muito Alto” desempenho, ou seja, alunos com pleno domínio das atividades apresentadas.)
* **Positividade:** É o somatório das projeções horizontais das notas nas Atividades (∑ LVx), acrescido do somatório do Número de Gifs de cor Azul, Verde e Amarela, respectivamente ponderados e associados às menções qualitativas “Muito Bom” (Gif Azul - peso 3), “Bom” (Gif Verde - peso 2) ou “Regular” (Gif Amarelo - peso 1).
* **Negatividade:** É o somatório das projeções verticais dos vetores correlacionados às notas de cada atividade, acrescido do Número Total de Faltas, mais o somatório dos Gifs de cor Laranja e Vermelha, associados às menções qualitativas “Fraco” (Gif Laranja - peso 1) ou “Não Satisfatório” (Gif Vermelho - peso 2).

## EQUAÇÕES

|  Termo       | Equação                                                                              |
|--------------|--------------------------------------------------------------------------------------|
| α            | 7.5°                                                                                 |
| I            | I = (n/2) * α                                                                        |
| θ            | θ = -90                                                                              |
| θ            | θ = 0                                                                                |
| LVx          | LVx = 10 * cos[(-12a + I)]                                                           |
| LVy          | LVy = 10 * sen[(-12a + I)]                                                           |
| Fator β      | β = LVx / LVy                                                                        | 
| Positividade | P = $LVx + (3 * $carinhas['azul']) + (2 * $carinhas['verde']) + $carinhas['amarela'] |
| Negatividade | N = sqrt(100 - pow($LVx, 2)) + $carinhas['laranja'] + (2 * $carinhas['vermelha'])    |

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

Python 3

```python
import math
print("Cálculo de LVx e nota")
a = 7.5
for n in range(0, 25):
  i = (n/2) * 7.5
  cosseno = math.cos(  math.radians(-12 * a + i)  )
  lvx = 10 * cosseno
  nota = round(lvx, 2)
  print("n: " + str(n) + ", i: " + str(i) + ", LVx: " + str(lvx) + ", nota: " + str(nota))
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

Cada participação do aluno no fórum, por meio de inserção de mensagens, serão avaliadas pelo professor-tutor, segundo uma escala Likert de 6 pontos baseada em critérios de apreciação e associada a uma escala icônica (LV ícones ou LV Gifs).

|  Item            | Valor CP |
|------------------|----------|
| Muito bom        | 4        | 
| bom              | 3        | 
| Regular          | 2        | 
| Fraco            | 1        | 
| Não satisfatório | 0        | 
| Neutro           | -        | 

A escolha do LV Ícone influencia no deslocamento do vetor.

Sempre que o aluno/cursista fizer alguma inserção no fórum, aparece a escala para ser preenchida.

Ao clicar em um destes LV Ícones o professor-tutor envia seu parecer sobre a mensagem do aluno, que será endereçada somente para o emissor da mensagem que será o único aluno a visualizar a ação do tutor.

Devidamente normalizado numa escala de 0 a 10, a nota do Fórum será representada pelo módulo do componente horizontal do LV Fórum. 

As mensagens avaliadas pelo professor-tutor podem ser classificadas em interação principal (IP), interação secundária (IS) e interações além de IP e IS.

Denomina-se P0 à primeira Interação Principal (IP) postada no Fórum, ou seja, a mensagem que revela a compreensão do aluno/interagente acerca do tema em discussão.
Sua categorização associada à escala Likert – Icônica é:

|  Item            | P0       | Angulo   |
|------------------|----------|----------|
| Muito bom        | 8α       | 8-60     | 
| bom              | 6α       | 6-45     | 
| Regular          | 4α       | 4-30     |
| Fraco            | 2α       | 2-15     | 
| Não satisfatório | 0α       | 0-0      |
| Neutro           | -        | -        |

Denomina-se N0 à primeira Interação Secundária (IS) postada no Fórum, ou seja, aquela que vem como resposta, comentário, sugestão, crítica, concordância, etc. a alguma interação principal já depositada no Fórum, com fins de provocar dinamismo nas discussões e gerar mais interações acerca do tema em estudo. Sua categorização associada à escala Likert – Icônica é: 

|  Item            | P0       | Angulo   |
|------------------|----------|----------|
| Muito bom        | 4α       | 4-30     | 
| bom              | 3α       | 3-22.5   | 
| Regular          | 2α       | 2-15     |
| Fraco            | α        | 1-7.5    | 
| Não satisfatório | 0α       | 0-0      |
| Neutro           | -        | -        |

A primeira interação principal (P0) tem, correspondentemente a cada categoria, peso maior comparado à interação secundária (N0).
Esta medida é para que o aluno se posicione em relação ao tema central do fórum e não fique apenas comentando as mensagens já depositadas. 
Se, após o aluno postar suas primeiras interações primária (P0) e secundária (N0), o mesmo atingir o limite de 12α ou 90°, o LV Fórum registra o valor máximo para aquela atividade e cessa seu incremento, visto que a direção do mesmo será a horizontal e seu módulo terá valor máximo. 

Para interações além de IP e IS caso o aluno não tenha atingido o limite de 12α, para cada nova interação qualificada com categoria (3), (4) ou (5), o vetor é incrementado de 1α (o vetor LV Fórum gira de α e seu módulo cresce de uma unidade) até que se complete o limite supracitado. Mas para cada interação categorizada com categoria (1) ou (2), o vetor LV Fórum gira no sentido anti-horário de um ângulo α/2 sem modificar seu módulo, até o limite de 90°. 

Note que esta medida incita a interatividade, uma vez que, não se atingindo o limite de 12α, o aluno procurará fazer inserções com mais qualidade nos fóruns no intuito de atingir uma maior pontuação. 

Os números P0 e N0, respectivamente relacionados à interação primária (IP) e interação secundária (IS), que precedem os ângulos nas Figuras 4 e 5, juntamente com os acréscimos unitários de 1α, compõem o módulo do vetor LV Fórum. 

Numa escala de 0 a 10, a nota de cada Fórum, representada pelo módulo do componente horizontal do LV Fórum (NFi), pode ser expressa pela equação (1): 



### Coeficiente de Passo



In = somatório das n interações no fórum

De forma a conferir diferentes pesos a diferentes mensagens cronologicamente inseridas, o LV Forum conta com:
 * o coeficiente do passo (CP), variando de 0 a 4 (LVGifs)
 * a variação angular ( )
 * o fator multiplicador (m)


### Variável m

Responsável por definir a quantidade mínima de interações no fórum (Configurável dentro das configurações do módulo Fórum)
Tem relação com os LVGifs/Coeficiente de Passo



Mensagem Principal: compreensão acerca do tema proposto; 
(I2): 1ª Mensagem de Interação: resposta, comentário, sugestão, crítica ou concordância, seguida de justificativa, a uma mensagem já realizada;
(I3 e I4): demais mensagens de interação.

A partir da quinta mensagem, (In ≥ 5), temos tanto um fator motivador, associando-se uma variação angular Δ = +1φ, 
caso a interação seja classificada com os LV Ícones Amarelo, Verde ou Azul, respectivamente: CP=2, CP=3 ou CP=4, 
quanto um fator penalizador, com variação angular Δ = -1φ, caso sejam o Vermelho ou Laranja, ou, CP=0 e CP=1.


------------------------------------------------------------------------------

