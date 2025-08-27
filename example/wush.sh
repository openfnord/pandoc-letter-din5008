#!/bin/bash
echo "wush produces the pdf from your file:"
#remove extension in variable
#echo "$1" | cut -f 1 -d '.' >$file
file=$(echo "$1" | cut -f 1 -d '.' ) 
echo $file
pandoc $file.md -s -o $file.pdf --template=din5008


#wush howto:
#put the templates here:
#pwd
#~/.pandoc/templates$
#ls
# din5008.latex  letter.latex  signature.pdf

#in your folder where you write your stupid legal letters:
#./wush.sh your_cool_letter_to_the_insurance_company.md
#you get your_cool_letter_to_the_insurance_company.pdf
#print it, fax it and have fun and save time on stupid stuff :-)


