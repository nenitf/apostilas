\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apostila}[2019/06/04]
\LoadClass{memoir}

\usepackage[utf8]{inputenc} %acentuação
\usepackage[portuguese]{babel} % dicionário, auxilia na quebra de palavras e tradução de comportamentos do latex como data
\usepackage{csquotes} % requisição babel
\usepackage{mdframed} % desenho de box
\usepackage[margin=2.5cm]{geometry} % geometria da página
\usepackage{hyperref} % hyperlinks
\usepackage{xcolor} % colorir texto
%blue, cyan, magenta, yellow, black, gray, white, darkgray, lightgray, brown, lime, olive, orange, pink, purple, teal, violet.
\usepackage{graphicx} % inserir imagens
\usepackage{fontawesome} % https://ctan.org/pkg/fontawesome
\usepackage[sfdefault]{roboto} % font roboto http://www.tug.dk/FontCatalogue/roboto/
\usepackage{listings} % print source codes
\usepackage{caption} % legendas


\AtBeginDocument{
    \maketitle% capa
    \tableofcontents*% sumario de titulos, * -> não s auto referenciar
    \lstlistoflistings% sumario de snippets
    \listoffigures% sumario de imagens
    \listoftables% sumario de tabelas
}

\AtEndDocument{
    % Print referencias
    \nocite{*}
    % estilo da bibliografia
    \bibliographystyle{abbrv}
    % chamando o arquivo refs.bib
    \bibliography{\jobname}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RE NEW COMANDOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Refazer comandos exige pegar o atual e renomeá-lo para poder utilizá-lo no novo padrão!
\let\oldcite\cite

% citação formatada
%   exige pacote xcolor
% [2][]
%   Espera dois parametros [2]
%   O primeiro parametro é branco por padrão []
\renewcommand*\cite[2][]{
    {\tiny\textcolor{darkgray}{\oldcite[#1]{#2}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NEW COMANDOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% box de dica
%   exige pacote xcolor e mdframed
\newcommand{\dica}[1]{
    \begin{mdframed}[backgroundcolor=yellow,linewidth=0pt]
        %\textcolor{white}{DICA:\\#1}
        DICA:\\#1
    \end{mdframed}
}


% link colorido
%   exige pacote xcolor e hyperref
\newcommand{\link}[2]{
    \textcolor{violet}{\href{#1}{#2}}
}

% print snippet
%   exige lstlisting e xcolor
\newcommand{\codefile}[2]{
    \lstinputlisting[language=#1,caption=#2]{#2}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SNIPPET
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% formatação do frame/box
\lstset{
    showstringspaces=false,% hide _ of spaces
    numbers=left,% line number
    xleftmargin=1cm,% respect margin 2cm
    numberstyle=\footnotesize,
    backgroundcolor=\color{lightgray!20}, % bg of snippet
    columns=fullflexible, % When copied dont make false spaces
    basicstyle=\ttfamily, % traditional font family for snippet
    tabsize=4, % transform tab in 4 spaces
    %showtabs=true,
    %tab=\rightarrowfill
}
% Substituir acentos para anotação LaTeX e imprimir corretamente
% https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings
\lstset{literate=
  {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
  {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
  {à}{{\`a}}1 {è}{{\`e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ù}{{\`u}}1
  {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ù}{{\`U}}1
  {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
  {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
  {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
  {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
  {Ã}{{\~A}}1 {ã}{{\~a}}1 {Õ}{{\~O}}1 {õ}{{\~o}}1
  {ç}{{\c c}}1 {Ç}{{\c C}}1
}

% syntax for golang
\lstdefinelanguage{go}%
{
    % keywords
    morekeywords=[1]{func,},%
    morekeywords=[2]{package,import,type,struct,return,defer,panic,%
    recover,select,var,const,iota,},
    morekeywords=[3]{string,uint,uint8,uint16,uint32,uint64,int,int8,int16,%
    int32,int64,bool,float32,float64,complex64,complex128,byte,rune,uintptr,%
    error,interface},% types
    morekeywords=[4]{map,slice,make,new,nil,len,cap,copy,close,%
    delete,append,real,imag,complex,chan,},% functions
    morekeywords=[5]{for,break,continue,range,go,goto,switch,case,fallthrough,if,%
    else,default,},% commands
    morekeywords=[6]{true,false},%
    morecomment=[l]{//},%
    morecomment=[s]{/*}{*/},%
    morestring=[b]',%
    morestring=[b]",%
    morestring=[s]{`}{`},%
    %
    % style of keywords
    keywordstyle=[1]\color{teal}\bfseries,
    keywordstyle=[2]\color{teal},
    keywordstyle=[3]\color{darkgray},
    keywordstyle=[4]\color{blue},
    keywordstyle=[5]\color{magenta},
    keywordstyle=[6]\color{orange!50!red!90}\bfseries,
    commentstyle=\color{gray},
    stringstyle=\color{olive},
}
