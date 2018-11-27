#!/bin/bash
lynx -dump https://www.kabum.com.br/computadores/scanners > temp.txt
l1=`cat temp.txt | grep -n "Mais procurados" | head -n1 | cut -f1 -d ":"`
l2=`cat temp.txt | grep -n "Mais procurados" | tail -n1 | cut -f1 -d ":"`
sed -n ''$l1','$l2'p' temp.txt | grep -v "De" | grep -v "Mais procurados" | grep -v "Listar" | grep -v "*" > temp.txt
cat temp.txt | sed 's/^$/<hr>/' > intermediario.txt
cat intermediario.txt | sed 's/$/<br>/' > temp.txt 
cat temp.txt > teste.html
