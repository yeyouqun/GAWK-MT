# How to get .texi and .html

To get .texi, run this:
```Shell
cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi
```

To get .html, run this(this part is also included in `conv.sh`):
```Shell
cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi
texi2html gawk.texi 		# the output file should be gawk.html
```

# TODO
BUGs: 
1. `texi2html` 转换后的结果的 menu 描述，中文说明文本部分无法显示，因此 menu 描述均保留英文。
2. `texi2html` 无法转换 @sup （上标）符号。

# Other 


# Contacts
Email: gyt_guoyuting@126.com
