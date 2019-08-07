# apostilas
Apostilas pessoais de estudo com meus resumos e explicações sobre determinado assunto, igual a um caderno de escola porém compilado com LaTeX.

## Posso baixar as apostilas? Aonde estão?
Sim, todas estão em pdf na branch [pdfs](https://github.com/nenitf/apostilas/tree/pdfs).

## Funcionamento do projeto
### Uso do LaTeX e BibTeX
[LaTeX](https://latex.net.br/faq/) é a ferramenta utilizada para gerar pdfs enquanto que o [BibTeX](http://www.bibtex.org/) complementa a formatação de bibliografias.

#### Gerando pdf
1. Acessar diretório do assunto;
1. É necessário compilar duas vezes para a toc (sumário) ser atualizada pelo arquivo `.aux`;
1. Para compilar bibliografia é com `bibtex`;
1. Após a bibliografia existir é necessário compilar mais duas vezes para atualizar o documento e a toc.

```shell
# manualmente
cd assunto
pdflatex assunto_apostila
pdflatex assunto_apostila
bibtex assunto_apostila
pdflatex assunto_apostila
pdflatex assunto_apostila

# com script b
cd assunto
../b
```

### Organização de pastas
* apostilas/ ``inicio do repositório``
    * apostila.cls ``classe padrão para apostilas``
    * assunto/ ``assunto a ser abordado, e.g. go``
        * apostila.cls ``modelo da apostila usada no assunto``
        * assunto_apostila.tex ``arquivo que gera pdf``
        * assunto_apostila.bib ``referências bibliográficas, criar mesmo que em branco``
        * assunto_apostila.pdf ``apostila final que será movida para a master``
        * README.md ``instruções e todo list de tópicos planejados do assunto``
        * (.aux .toc .bbl .log .out ...) ``arquivos gerados durante compilação``
            * imgs/
                * (.png .jpeg ...) ``imagens usadas no capítulo``
                * (.gv) ``códigos fonte de imagens usadas no capítulo``
    * README.md

**obs**: Cada assunto pode obter um modelo diferente de formatação do documento (`apostila.cls`), porém caso seja possível será utilizado o template menos específico (`apostila.cls` da raiz do projeto). Para usá-lo é interessante criar um link simbólico:
```shell
cd apostilas # raiz do projeto
ln -t assunto apostila.cls
```

### Uso de graphviz
[Graphviz](https://www.graphviz.org/documentation/) é um programa que pode ler `.gv` e transformar em `.png`, facilitando a criação de diagramas. [Testa aí](https://dreampuf.github.io/GraphvizOnline).
```shell
# manualmente
cd assunto/imgs
dot -Tpng -O arquivo.gv

# com script i para compilar todos os arquivos.gv
# necessário estar no diretório dos arquivos
cd assunto/imgs
../../i

# com script i para converter um arquivo.gv específico
# NÃO é necessário estar no diretório do arquivo
../i imgs/arquivo.gv
```

## Meu fluxo de trabalho
Separo três workspaces, sendo eles para:
1. Compilar e visualizar o pdf
  - ``../b; zathura *.pdf``
1. Gerar e visualizar gráficos
  - ``../../i; feh arquivo.gv``
1. Escrever apostila

## Assuntos concluídos
* [ ] Go **parado**
* [ ] PHP
* [ ] Javascript **em andamento**
* [ ] Git **em andamento**
* [ ] Python
* [ ] Godot (engine e linguagem) **parado**

## TODO
* [ ] Criar forma para copiar identação junto com snippet de códigos na classe apostila.cls
