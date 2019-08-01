#!/usr/bin/env bash
# -------------------------------------------- #
# Autor: Neni
# Github/Gitlab: @nenitf
# -------------------------------------------- #
# Descrição:
#		Automatiza compilação de pdflatex e bibtex
#
# Como usar:
#		./b git
#   Em que git é um diretório, no mesmo nível
#   desse script, contendo os arquivos
#   git_apostila.tex e git_apostila.bib
# -------------------------------------------- #

# abort on errors
set -e

BASEDIR=$(dirname "$0")
ASSUNTODIR=$BASEDIR/$1
if [ -d "$ASSUNTODIR" ]; then
  cd $ASSUNTODIR
  APOSTILA=$(find *.tex | awk -F '.' '{print $1}')
  pdflatex -halt-on-error $APOSTILA
  pdflatex -halt-on-error $APOSTILA
  bibtex $APOSTILA
  bibtex $APOSTILA
  pdflatex -halt-on-error $APOSTILA
  pdflatex -halt-on-error $APOSTILA
else
  echo "Diretório de assunto inexistente! $ASSUNTODIR"
fi
