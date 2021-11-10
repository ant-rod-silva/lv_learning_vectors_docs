## ARQUIVOS

### Arquivo: 
blocks/lvs/biblioteca/business/Item.php

#### Descrição: 
Wrapper de Itens avaliados

#### Atributos:

<table>
  <th>
    <td>Atributo</td>
    <td>Descrição</td>
  </th>
  <tr>
    <td>$_atividade</td>
    <td>Nome da atividade lv a qual o item pertence</td>
  </tr>
  <tr>
    <td>$_componente</td>
    <td>Nome do componente avaliado</td>
  </tr>
  <tr>
    <td>$_item</td>
    <td>Item avaliado</td>
  </tr>
  <tr>
    <td>$_avaliacao</td>
    <td>Avaliação do item</td>
  </tr>
</table>

#### Métodos

<table>
  <th>
    <td>Método</td>
    <td>Descrição</td>
    <td>-</td>
  </th>
  <tr>
    <td>__construct( $atividade,  $tipo,  $item )</td>
    <td>Instancia Item</td>
    <td>-</td>
  </tr>
  <tr>
    <td>getAtividade( )</td>
    <td>Retorna o nome da atividade a qual o item pertence</td>
    <td>-</td>
  </tr>
</table>

#### Usado por
  - oononono


### Arquivo: 
/blocks/lvs/biblioteca/business/AtividadeLv.php

#### Descrição:
Interface para classes que implementarão um sistema de avaliação de uma atividade a distância.

#### Atributos:

<table>
  <th>
    <td>Variável/Constante</td>
    <td>Descrição</td>
    <td>Valor</td>
  </th>
  <tr>
    <td>const ALFA</td>
    <td>-</td>
    <td>7.5</td>
  </tr>
</table>

#### Métodos abstratos:

<table>
  <th>
    <td>Método</td>
    <td>Descrição</td>
  </th>
  <tr>
    <td>bool contribuicao( Item $item )</td>
    <td>Determina se o item corresponde ao documento final gerado pela atividade ou se é parte do mesmo</td>
  </tr>
  <tr>
    <td>AvaliacaoLv getAvaliacao( Item $item )</td>
    <td>Retorna a avaliação de um item </td>
  </tr>
  <tr>
    <td>float getNota( $estudante )</td>
    <td>Retorna a nota do estudante</td>
  </tr>
  <tr>
    <td>bool podeAvaliar( Item $item )</td>
    <td>Determina se o usuário logado tem permissão para avaliar um item</td>
  </tr>
  <tr>
    <td>bool podeVerNota( Item $item )</td>
    <td>Determina se o usuário logado tem permissão para ver a avaliação um item</td>
  </tr>
  <tr>
    <td>AvaliacaoLv removerAvaliacao( AvaliacaoLv $avaliacao )</td>
    <td>Remove uma avaliação e reavalia o desempenho do estudante na atividade</td>
  </tr>
  <tr>
    <td>AvaliacaoLv salvarAvaliacao( AvaliacaoLv $avaliacao );</td>
    <td>Salva uma avaliação e reavalia o desempenho do estudante na atividade</td>
  </tr>
</table>

#### Métodos

<table>
  <th>
    <td>Método</td>
    <td>Descrição</td>
    <td>Parâmetros</td>
  </th>
  <tr>
    <td>float calcularBeta($LVx, $carinhas)</td>
    <td>Calcula o fator ß dado o módulo do vetor e a quantidade de carinhas recebidas na atividade</td>
    <td>$LVx: módulo do vetor <br/><br/> $carinhas: array com o número de carinhas por cor [azul: int, verde: int, amarela: int, laranja: int, vermelha: int, preta: int] </td>
  </tr>
  <tr>
    <td>float calcularModuloVetor($I)</td>
    <td>Calcula o módulo do vetor LVx dada a variação angular</td>
    <td>$I: variação angular</td>
  </tr>
  <tr>
    <td>float limitarAoQuadrante($I)</td>
    <td>Delimita os valores possíveis da variação angular ao primeiro quadrante</td>
    <td>$I: variação angular</td>
  </tr>
</table>

#### Usado por
  - blocks\lvs\biblioteca\moodle2\business\Wikilv.php
  - blocks\lvs\biblioteca\moodle2\business\Tarefalv3.php
  - blocks\lvs\biblioteca\moodle2\business\Forumlv.php
  - blocks\lvs\biblioteca\moodle2\business\Chatlv.php
  - blocks\lvs\biblioteca\moodle2\avaliacao\Moodle2NotasLv.php

