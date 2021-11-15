# MANUAL DE REFERÊNCIA

## TECNOLOGIAS EMPREGADAS

<table>
  <tr>
    <th>Tecnologia</th>
    <th>Descrição</th>
  </tr>
  <tr>
    <td>Html</td>
    <td>
      -
    </td>
  </tr>
  <tr>
    <td>JavaScript</td>
    <td>
      -
    </td>
  </tr>
  <tr>
    <td>CSS</td>
    <td>
      -
    </td>
  </tr>
  <tr>
    <td>PHP</td>
    <td>
      -
    </td>
  </tr>
</table>

## ESTRUTURA DE DIRETÓRIOS DE MÓDULOS DO MOODLE

Todo módulo do Moodle possui um esqueleto padrão, que são os arquivos necessários para garantir o funcionamento e a integração completa com o ambiente. São estes:

<table>
  <tr>
    <th>Arquivo</th>
    <th>Descrição</th>
  </tr>
  <tr>
    <td>db/access.php</td>
    <td>
      Este arquivo contém as permissões para utilizar as funcionalidades do módulo.<br/>
      Por exemplo, alguém com perfil professor pode fazer uma edição de um determinado conteúdo, diferentemente de alguém com perfil de aluno.
    </td>
  </tr>
  <tr>
    <td>db/install.xml</td>
    <td>
      Este arquivo descreve, em formato XML, as tabelas de banco de dados a serem utilizadas pelo módulo. 
    </td>
  </tr>
  <tr>
    <td>db/log.php</td>
    <td>
      Este arquivo contém as ações que serão adicionadas ao log do módulo este quando for executado.
    </td>
  </tr>
  <tr>
    <td>db/upgrade.php</td>
    <td>
      Este arquivo contém as modificações a serem feitas na estrutura das tabelas do módulo.
    </td>
  </tr>
  <tr>
    <td>lang/en/nomedomodulo.php <br/> lang/pt_br/nomedomodulo.php</td>
    <td>
      Este arquivo, com o mesmo nome do módulo, contém todas as strings utilizadas no módulo, conforme o idioma selecionado.
    </td>
  </tr>
  <tr>
    <td>pix/icon.gif</td>
    <td>
      Este arquivo é uma imagem de tamanho 16px por 16px, a qual é utilizada como ícone do módulo.
    </td>
  </tr>
  <tr>
    <td>index.php</td>
    <td>
      Esta classe representa a página que lista todas as instâncias criadas do módulo em um curso.
    </td>
  </tr>
  <tr>
    <td>mod_form.php</td>
    <td>
      Esta classe representa o formulário inicial que é apresentado quando se cria ou modifica uma instância do módulo.
    </td>
  </tr>
  <tr>
    <td>version.php</td>
    <td>
      Indica a versão do módulo. Utilizado para fazer upgrades.<br/>
      Se durante o desenvolvimento do módulo (que já foi instalado) forem necessárias mudanças na sua estrutura (tabelas ou permissões de acesso), o Moodle deve ser forçado a recarregar essa estrutura. Para que isso ocorra, o número da versão deve ser incrementado. 
    </td>
  </tr>
  <tr>
    <td>view.php</td>
    <td>
      Página que permite ver uma instância em particular.<br/>
      Quando o link de uma instância do módulo é selecionado, esta classe é executada.
    </td>
  </tr>
</table>

Para o desenvolvimento do plugin LV, foram criados outros diretórios e arquivos, a saber.

<table>
  <tr>
    <th>Arquivo</th>
    <th>Descrição</th>
  </tr>
  <tr>
    <td>biblioteca</td>
    <td>
      -
    </td>
  </tr>
  <tr>
    <td>block_lvs.php</td>
    <td>
      -
    </td>
  </tr>
  <tr>
    <td>module.js</td>
    <td>
      -
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

## TEMAS

todos os elementos do front-end do Moodle estão em uma pasta no seguinte diretório: /theme/nombretheme

## CARINHAS / LV ICONES / LV GIFS / LV JELLY

Arquivos

- blocks\lvs\biblioteca\Carinhas.php
- blocks\lvs\biblioteca\moodle2\business\CursoLv.php
- blocks\lvs\biblioteca\moodle2\business\Moodle2CursoLv.php

## AVALIAÇÃO

### blocks\lvs\biblioteca\forms\FormsAvaliacao.php

<TABLE>
  <TR>
    <TD COLSPAN="2" align="center" valign="center">
      <STRONG>ARQUIVO</STRONG>
    </TD>
  </TR>
  <TR>
    <TD>
      <strong>Arquivo</strong>
    </TD>
    <TD>
      <strong>Tipo</strong>
    </TD>
  </tr>
  <TR>
    <TD>
      blocks\lvs\biblioteca\forms\FormsAvaliacao.php
    </TD>
    <TD>
      interface
    </TD>    
  </TR>
  <TR>
    <TD COLSPAN="2" align="center" valign="center">
      <STRONG>MÉTODOS</STRONG>
    </TD>
  </TR>
  <TR>
    <TD>
      <strong>Método</strong>
    </TD>
    <TD>
      <strong>Descrição</strong>
    </TD>
  </tr>
  <TR>
    <TD>
      public function adicionarInput($atributos);
    </TD>
    <TD>
      Adiciona um input hidden ao formulário
    </TD>    
  </TR>
  <TR>
    <TD>
      public function avaliacaoAtual($avaliacao);
    </TD>
    <TD>
      Constrói html com a avaliação atual
    </TD>    
  </TR>
  <TR>
    <TD>
      public function avaliacaoPor($nome);
    </TD>
    <TD>
      Constrói html com o nome do avaliador
    </TD>    
  </TR>
  <TR>
    <TD>
      public function likert($avaliacaoAtual);
    </TD>
    <TD>
      -
    </TD>    
  </TR>
  <TR>
    <TD>
      public function likertAjax($avaliacaoAtual);
    </TD>
    <TD>
      -
    </TD>    
  </TR>
  <TR>
    <TD>
      public function likertEstendido($avaliacaoAtual);
    </TD>
    <TD>
      -
    </TD>    
  </TR>
  <TR>
    <TD>
      public function likertEstendidoAjax($avaliacaoAtual);
    </TD>
    <TD>
      -
    </TD>    
  </TR>
</TABLE>
  
### blocks\lvs\biblioteca\forms\FormsAvaliacaoImpl.php

<TABLE>
  <TR>
    <TD COLSPAN="3" align="center" valign="center">
      <STRONG>ARQUIVO</STRONG>
    </TD>
  </TR>
  <TR>
    <TD><strong>Arquivo</strong></TD>
    <TD><strong>Tipo</strong></TD>
    <TD><strong>Implementa</strong></TD>
  </tr>
  <TR>
    <TD>blocks\lvs\biblioteca\forms\FormsAvaliacaoImpl.php</TD>
    <TD>class</TD>
    <td>FormsAvaliacao</td>
  </TR>
  <TR>
    <TD COLSPAN="3" align="center" valign="center"><STRONG>ATRIBUTOS</STRONG></TD>
  </TR>
  <TR>
    <TD><strong>Atributos</strong></TD>
    <TD><strong>Descrição</strong></TD>
    <td></td>
  </tr>
  <TR>
    <TD>private $_carinhas;</TD>
    <TD>Contém o html gerado pelos métodos de geração de formulário</TD>
    <td></td>
  </tr>
  <TR>
    <TD>private $_data;</TD>
    <TD>Contém o html gerado pelos métodos de geração de formulário </TD>
    <td></td>
  </tr>
  <TR>
    <TD>private $_template;</TD>
    <TD>Template</TD>
    <td></td>
  </tr>
  <TR>
    <TD COLSPAN="3" align="center" valign="center"><STRONG>MÉTODOS</STRONG></TD>
  </TR>
  <TR>
    <TD><strong>Método</strong></TD>
    <TD><strong>Descrição</strong></TD>
    <td></td>
  </tr>
  <TR>
    <TD>
      public function __construct()
    </TD>
    <TD>
      Instancia FormsAvaliacaoImpl 
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function adicionarInput($atributos)
    </TD>
    <TD>
      Adiciona um input hidden no formulário
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function avaliacaoAtual($avaliacaoAtual)
    </TD>
    <TD>
      Retorna o componente html que exibe a nota lv da avaliação
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function avaliacaoPor($nome)
    </TD>
    <TD>
      Html que exibe o avaliador
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function likert($avaliacaoAtual)
    </TD>
    <TD>
      Retorna um formulário html com escala icônica likert para avaliação de um Item
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function getForm()
    </TD>
    <TD>
      -
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function likertAjax($avaliacaoAtual)
    </TD>
    <TD>
      Retorna um formulário ajax html com escala icônica likert para avaliação de um Item
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function likertEstendido($avaliacaoAtual)
    </TD>
    <TD>
      Retorna o formulário html estendido para avaliação de um Item
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      public function likertEstendidoAjax($avaliacaoAtual)
    </TD>
    <TD>
      -
    </TD>    
    <TD></TD>    
  </TR>
  <TR>
    <TD>
      private function _criarInputHidden($domDocument, $atributos)
    </TD>
    <TD>
      Cria um input hidden com os atributos fornecidos
    </TD>    
    <TD></TD>    
  </TR>
</TABLE>
