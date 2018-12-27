
我在官方提供的英文文档 `gawktexi.in` 的基础上，根据 @yeyouqun 的翻译版进行转写，制作了对应的中文版本 `gawktexi.in`。

在 `gawk-4.1.4/doc` 目录下，`gawktexi.in` 是我修改的文件，如果想对文档进行更新，请修改这个文件；`ori.gawktexi.in` 则是官方文档的英文原版。

在转写过程中，对于一些翻译我进行了一些修改，所以和原版的 word 文档有不一致的地方。修改的内容没有一一记录，其中部分记录在 `update.md`。


# Requiremenrs
texi2html


# How to get .texi and .html

To get `.texi`, run this:
```Shell
cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi
```

To get `.html`, run this(this part is also included in `conv.sh`):
```Shell
cd gawk-4.1.4/doc
awk -f ./sidebar.awk < ./gawktexi.in > gawk.texi
texi2html gawk.texi 		# the output file should be gawk.html
```


# TODO
BUGs: 
1. `texi2html` 转换后的结果的 menu 描述，中文说明文本部分无法显示，因此 menu 描述均保留英文。
2. `texi2html` 无法转换 @sup （上标）符号。


# Others
有任何问题可以提 ISSUE 或者联系我的邮箱: gyt_guoyuting@126.com
