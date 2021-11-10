Todo módulo do Moodle possui um esqueleto padrão, que são os arquivos necessários para garantir o funcionamento e a integração completa com o ambiente. São estes:

<table>
  <tr>
    <td>db/access.php</td>
    <td>
      Este arquivo deve conter as permissões para utilizar as funcionalidades do módulo. 
      Por exemplo, alguém com perfil de editor ou professor, pode fazer edição do conteúdo, já alguém com perfil de aluno não tem essa permissão
    </td>
  </tr>
  <tr>
    <td>db/install.xml</td>
    <td>
      Neste arquivo são descritas no formato XML as tabelas de banco de dados a serem utilizadas pelo módulo. Deve possuir pelo menos uma tabela, contendo o mesmo nome do módulo.
    </td>
  </tr>
</table>

## DIRETÓRIOS

### IMAGENS

/blocks/lvs/imgs/lvometro/
/blocks/lvs/imgs/carinhas
/blocks/lvs/imgs/menu/

### PÁGINAS

Caixa do bloco Notas LV (à direita) - blocks/lvs/pages/html/block_lvs.html
Página de créditos - blocks/lvs/pages/creditos_lvs.php.html
Atividades a distância - pages/html/distancia/atividades_distancia


## ARQUIVOS

### Arquivo: 
blocks/lvs/biblioteca/business/Item.php

#### Descrição: 
Wrapper de Itens avaliados

#### Atributos:

<table>
  <tr>
    <th>Atributo</th>
    <th>Descrição</th>
  </tr>
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
  <tr>
    <th>Método</th>
    <th>Descrição</th>
    <th>-</th>
  </tr>
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
  <tr>
    <td>getAvaliacao( )</td>
    <td>Retorna a avaliação do item</td>
    <td>-</td>
  </tr>
  <tr>
    <td>getComponente( )</td>
    <td>Retorna o nome do componente avaliado</td>
    <td>-</td>
  </tr>
  <tr>
    <td>getItem( )</td>
    <td>Retorna o item avaliado</td>
    <td>-</td>
  </tr>
  <tr>
    <td>setAtividade( $atividade )</td>
    <td>Altera o nome da atividade a qual o item pertence</td>
    <td>$atividade: nome da atividade</td>
  </tr>
  <tr>
    <td>setAvaliacao( AvaliacaoLv $avaliacao )</td>
    <td>Altera a avaliação do item</td>
    <td>$avaliacao: nova avaliação</td>
  </tr>
  <tr>
    <td>setComponente( $componente )</td>
    <td>Altera o nome do componente avaliado</td>
    <td>$componente nome do componente</td>
  </tr>
  <tr>
    <td>setItem( $item )</td>
    <td>Altera o item avaliado</td>
    <td>-</td>
  </tr>
  <tr>
    <td>serialize()</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td>unserialize()</td>
    <td>-</td>
    <td>-</td>
  </tr>
</table>

#### Usado por
  - blocks\lvs\biblioteca\avaliacao\AvaliacaoLv.php
  - blocks\lvs\biblioteca\avaliacao\NotasLv.php
  - blocks\lvs\biblioteca\moodle2\avaliacao\Moodle2NotasLv.php
  - blocks\lvs\biblioteca\moodle2\business\Chatlv.php
  - blocks\lvs\biblioteca\moodle2\business\Forumlv.php
  - blocks\lvs\biblioteca\moodle2\business\Tarefalv3.php
  - blocks\lvs\biblioteca\moodle2\business\Wikilv.php
  - blocks\lvs\biblioteca\util\Cache.php
  - blocks\lvs\pages\rate.php
  - blocks\lvs\pages\rateajax.php
  - blocks\lvs\tests\ajusta_forumlv_simples.php
  - blocks\lvs\tests\ajustes_faltas.php
  - blocks\lvs\tests\ajustes_nota_forumlvs.php
  - blocks\lvs\tests\test.php
  - mod\chatlv\lib.php
  - mod\chatlv\renderer.php
  - mod\chatlv\report.php
  - mod\forumlv\lib.php
  - mod\wikilv\diff.php
  - mod\wikilv\pagelib.php
  - mod\wikilv\renderer.php
  - mod\wikilv\view.php

-----------------------------------------------------------

### Arquivo: 
/blocks/lvs/biblioteca/business/AtividadeLv.php

#### Descrição:
Interface para classes que implementarão um sistema de avaliação de uma atividade a distância.

#### Atributos:

<table>
  <tr>
    <th>Variável/Constante</th>
    <th>Descrição</th>
    <th>Valor</th>
  </tr>
  <tr>
    <td>const ALFA</td>
    <td>-</td>
    <td>7.5</td>
  </tr>
</table>

#### Métodos abstratos:

<table>
  <tr>
    <th>Método</th>
    <th>Descrição</th>
  </tr>
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
  <tr>
    <th>Método</th>
    <th>Descrição</th>
    <th>Parâmetros</th>
  </tr>
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

