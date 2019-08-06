#!/usr/bin/env bash
# -------------------------------------------- #
# Autor: Neni
# Github/Gitlab: @nenitf
# -------------------------------------------- #
# Descrição:
#		Automatiza compilação de graphviz
#
# Como usar:
#   1. digitar: i assunto/imgs/arquivo.gv
#   ou
#   1. Acessar diretório com arquivos .gv
#		2. digitar: ../../i
# -------------------------------------------- #

# abort on errors
set -e

# Caso seja passado o path/arquivo.gv
if [ ! -z "$1" ]; then
  FILENAME=$(echo $1 | awk -F'.gv' '{print $1}')
  dot -Tpng $1 -o $FILENAME.png
else
  for f in $PWD/*.gv; do
    FILENAME=$(echo $f | awk -F. '{print $1}')
    dot -Tpng $f -o $FILENAME.png
  done
fi
