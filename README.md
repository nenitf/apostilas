# apostilas
Apostilas pessoais de estudo com meus resumos e explicações sobre determinado assunto, igual a um caderno de escola porém compilado com LaTeX.

## Posso baixar as apostilas?
Atualmente todas são convertidas somente para pdf e disponibilizadas junto com seu "código bruto" no diretório de seu respectivo assunto. A apostila de Go, por exemplo, é go/go_apostila.pdf. Sinta-se livre para consumir o conteúdo.

## Funcionamento do projeto
### Compilando pdf
1. Acessar diretório do assunto;
2. É necessário compilar duas vezes para a toc (sumário) ser atualizada pelo arquivo ``.aux``;
3. Para compilar bibliografia é com ``bibtex``;
4. Após a bibliografia existir é necessário compilar mais duas vezes para atualizar o documento e a toc.

```shell
cd assunto
pdflatex assunto_apostila
pdflatex assunto_apostila
bibtex assunto_apostila
pdflatex assunto_apostila
pdflatex assunto_apostila
```

### Organização de pastas
* apostilas/ ``inicio do repositório``
    * apostila.cls ``classe padrão para apostilas``
    * assunto/ ``assunto a ser abordado, e.g. go``
        * apostila.cls ``modelo da apostila usada no assunto``
        * assunto_apostila.tex ``arquivo que gera pdf``
        * assunto_apostila.bib ``referências bibliográficas, criar mesmo que em branco``
        * assunto_apostila.pdf ``apostila final``
        * README.md ``instruções e todo list de tópicos planejados do assunto``
        * (.aux .toc .bbl .log .out ...) ``arquivos gerados durante compilação``
            * imgs/
                * (.png .jpeg ...) ``imagens usadas no capítulo``
                * (.dot .gv ...) ``códigos fonte de imagens usadas no capítulo``
    * README.md

**obs**: Cada assunto pode obter um modelo diferente de formatação do documento (``apostila.cls``), porém caso seja possível será utilizado o template menos específico (``apostila.cls`` da raiz do projeto). Para usá-lo é interessante criar um link simbólico:
```shell
cd apostilas # raiz do projeto
ln -t assunto apostila.cls
```

### Uso de graphviz
Graphviz é um programa que pode ler ``.dot`` e ``.gv`` e transformar em imagens, facilitando a criação de diagramas.
```shell
dot -Tpng -O arquivo.gv
```

## Assuntos planejados
* [ ] Go **parado**
* [ ] PHP
* [ ] Javascript **em andamento**
* [ ] Git **em andamento**
* [ ] Python
* [ ] Godot (engine e linguagem) **parado**

## TODO
* [ ] Criar forma para copiar identação junto com snippet de códigos na classe apostila.cls


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
| :feet: |                 |                 | [Exemplos](https://gitlab.com/nenitf/ead-go)
| :book: |  Casa do código |  Caio Filipini  | [Programando em Go](https://gitlab.com/nenitf/ead-programando-em-go)
|:school:|  School of net  | Wesley Willians | [Iniciando com Go](https://gitlab.com/nenitf/ead-iniciando-com-go)
|:school:|  School of net  | Wesley Willians | [Iniciando com Go OO](https://gitlab.com/nenitf/ead-iniciando-com-go-oo)
|:school:|  School of net  | Wesley Willians | [Avançando com GO](https://gitlab.com/nenitf/ead-avancando-com-go)
|:school:|  School of net  | Wesley Willians | [Iniciando com GO WEB](https://gitlab.com/nenitf/ead-iniciando-com-go-web)
|:school:|   Cod3r/Udemy   | Leonardo Leitão | [Explorando a Linguagem do Google](https://gitlab.com/nenitf/ead-go-cod3r)
|:school:| Greater Commons |   Ellen Körbes  | [A Linguagem Go](https://gitlab.com/nenitf/ead-go-greatercommons)
