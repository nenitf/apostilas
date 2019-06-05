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

\AtBeginDocument{
    \maketitle
    \tableofcontents
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
    \begin{mdframed}[backgroundcolor=gray]
        %\textcolor{white}{DICA:\\#1}
        DICA:\\#1
    \end{mdframed}
}


% link colorido
%   exige pacote xcolor e hyperref
\newcommand{\link}[2]{
    \textcolor{violet}{\href{#1}{#2}}
}

