cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi

cd ../..
texi2html gawk-4.1.4/doc/gawk.texi && open gawk.html
