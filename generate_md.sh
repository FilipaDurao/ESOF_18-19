cd markdown
for fn in *.md; do
    t=../latex/${fn%.md}.tex
    cat $fn |  pandoc --from=markdown --to=latex -o $t
done

cd ../latex

latexmk -pdf Main.tex -c

mv Main.pdf ../ESOF-2018-19-T3-3MIEIC02-09.pdf
cd ..
gio open ESOF-2018-19-T3-3MIEIC02-09.pdf