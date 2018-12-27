cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi
texi2html gawk.texi && open gawk.html
