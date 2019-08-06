#!/usr/bin/env bash
# -------------------------------------------- #
# Autor: Neni
# Github/Gitlab: @nenitf
# -------------------------------------------- #
# Descrição:
#		Automatiza compilação de pdflatex e bibtex
#
# Como usar:
#   1. Acessar diretório com arquivo .tex
#		2. digitar: ../b
# -------------------------------------------- #

# abort on errors
set -e

ASSUNTODIR=$BASEDIR/$1
cd $PWD
APOSTILA=$(find *.tex | awk -F '.' '{print $1}')
pdflatex -halt-on-error $APOSTILA
pdflatex -halt-on-error $APOSTILA
bibtex $APOSTILA
bibtex $APOSTILA
pdflatex -halt-on-error $APOSTILA
pdflatex -halt-on-error $APOSTILA
