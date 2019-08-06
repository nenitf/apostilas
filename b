#!/usr/bin/env bash
# -------------------------------------------- #
# Autor: Neni
# Github/Gitlab: @nenitf
# -------------------------------------------- #
# Descrição:
#		Automatiza compilação de pdflatex e bibtex
#
# Como usar:
#   1. ./b assunto
#   ou
#   1. Acessar diretório com arquivo .tex
#		2. digitar: ../b
# -------------------------------------------- #

# abort on errors
set -e

# Caso seja passado o assunto/diretório
if [ ! -z "$1" ]; then
  # Encontra local em que o script ./b está para então ir para o assunto
  BASEDIR=$(dirname "$0")
  ASSUNTODIR=$BASEDIR/$1

  cd $ASSUNTODIR
fi

APOSTILA=$(find *.tex | awk -F '.' '{print $1}')
pdflatex -halt-on-error $APOSTILA
pdflatex -halt-on-error $APOSTILA
bibtex $APOSTILA
bibtex $APOSTILA
pdflatex -halt-on-error $APOSTILA
pdflatex -halt-on-error $APOSTILA
