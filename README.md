# apostilas
Apostilas pessoais de estudo com meus resumos e explicações sobre determinado assunto, igual a um caderno de escola porém compilado com LaTeX.

## Workflow
### Compilando pdf
1. Acessar diretório do assunto;
2. É necessário compilar duas vezes para a toc (sumário) ser atualizada pelo arquivo ``.aux``;
3. Para compilar bibliografia é com ``bibtex``;
4. Após a bibliografia existir é necessário compilar mais duas vezes para atualizar o documento e a toc.

```shell
cd assunto
pdflatex assunto_postila
pdflatex assunto_postila
bibtex assunto_postila
pdflatex assunto_postila
pdflatex assunto_postila
```

### Organização de pastas
* apostilas/ ``inicio do repositório``
    * assunto/ ``assunto a ser abordado, e.g. go``
        * apostila.cls ``apostila modelo que será usada``
        * assunto_apostila.tex ``arquivo que gera pdf``
        * assunto_apostila.bib ``referências bibliográficas, criar mesmo que em branco``
        * assunto_apostila.pdf ``apostila final``
        * (.aux .toc .bbl .log .out ...) ``arquivos gerados durante compilação``
            * imgs/
                * (.png .jpeg ...) ``imagens usadas no capítulo``
                * (.dot .gv ...) ``códigos fonte de imagens usadas no capítulo``
    * README.md ``você está aqui``

### Uso de graphviz
Graphviz é um programa que pode ler ``.dot`` e ``.gv`` e transformar em imagens, facilitando a criação de diagramas.
```shell
dot -Tpng -O arquivo.gv
```

## Estudos Ativos Documentados
Paralelo a criação de apostilas, também crio exemplos e escrevo exercicíos práticos de livros e cursos que consumo.
Dentro de cada repositorio EAD, com exceção de projeto unicamente de exemplos, terão diretórios com o padrão "``numero``_``titulo-do-assunto``". Sendo ``numero`` referenciando a página ou aula de inicio do código e ``titulo-do-assunto``, de cunho pessoal, o objetivo do desenvolvimento.

### Legendas
* :book: Livro
* :school: Curso
* :feet: Exemplos

### Index
* [Go](https://gitlab.com/nenitf/apostilas#go)

### Go

|  Tipo  | Empresa/Editora |     Autores     | Nome |
| ------ | --------------- | --------------- | ---- |
| :feet: |  Casa do código |                 | [Programando em Go](https://gitlab.com/nenitf/ead-go) |
| :book: |  Casa do código |  Caio Filipini  | [Programando em Go](https://gitlab.com/nenitf/ead-programando-em-go) |
|:school:|  School of net  | Wesley Willians | [Iniciando com Go](https://gitlab.com/nenitf/ead-iniciando-com-go)
|:school:|  School of net  | Wesley Willians | [Iniciando com Go OO](https://gitlab.com/nenitf/ead-iniciando-com-go-oo)
|:school:|  School of net  | Wesley Willians | [Avançando com GO](https://gitlab.com/nenitf/ead-avancando-com-go)
|:school:|  School of net  | Wesley Willians | [Iniciando com GO WEB](https://gitlab.com/nenitf/ead-iniciando-com-go-web)
|:school:|   Cod3r/Udemy   | Leonardo Leitão | [Explorando a Linguagem do Google](https://gitlab.com/nenitf/ead-go-cod3r)
|:school:| Greater Commons |   Ellen Körbes  | [A Linguagem Go](https://gitlab.com/nenitf/ead-go-greatercommons)
