#!/bin/bash
# Idea Original de persand (Per Sandström) 
# URL https://github.com/persand
# https://gist.github.com/1370410
# Thanks to Chicosoftware (https://github.com/chicosoftware) for testing
# Una implementacion de Jorge Brunal a.k.a. Diniremix 

if [ $# -le 0 ];then 
	echo -e $0: Especifique la una URL de GitHub y/o un codigo personalizado;
	exit 1;
fi
url=$1;
code=$2;

function shit2() {
  if [ -n "$code" ]; then
    curl -i http://git.io -F "url="$url"" -F code="$code";
  else
    curl -i http://git.io -F "url="$url"";
  fi
}
shit2;