#!/bin/bash
#Utilizando el tam seria:

#tam =`du -b f.txt | sed -n 's/^\([0-9]*\).*/\1/p'` 
#echo -n -e "blob $tam\0" | cat - f.txt | sha1sum

#Sin utilizar el tam seria:

#echo -n -e  "blob `du -b f.txt | sed -n 's/^\([0-9]*\).*/\1/p'`\0"| cat - f.txt | sha1sum 

echo -n -e  "blob `du -b $1 | sed -n 's/^\([0-9]*\).*/\1/p'`\0"| cat - $1 | sha1sum  #La última línea de comandos del apartado anterior
