## 总体
1. HTML 版本中，“本书”改译为“本网页”；
2. 在部分交叉引用的文本中，原译者为了使章节指向清晰，加入了“第 x 章，第 y 页”的文本内容。这部分内容在英文原文中未出现。TeX 格式的文本改为依照英文原文，删除“第 x 章，第 y 页”的部分。
3. 英文版本正文中有的，且原译文中没翻译的部分，我自行翻译了，未记录。翻译水平很渣，请见谅。
4. 英文注释部分未翻译。
5. 全文使用中文全角括号。

## 第三章前言
1. 
英文原文
> We were introduced in 1990 by circumstances—and our favorite programming language, AWK. 

译文原文
> 我们由于 AWK 因缘际会而结识。这是好几年前的事了。

改动
> 在 1990 年，我们由于 AWK 因缘际会而结识。

## 第四章前言
1.
英文原文
> Writing Extensions for gawk, has all the details, and, as expected, many examples to help you learn the ins and outs.

译文原文
> 第十六章描述了所有的技术细节，其中有许多的例子，希望让你学习到里里外外的一切。

改动
> 扩展 gawk, 描述了所有的技术细节，其中有许多的例子，希望让你学习到里里外外的一切。

## 前言
1.
英文原文
> if you invoke it with the proper options or environment variables, it is fully compatible with the POSIX(1) specification of the awk language and with the Unix version of awk maintained by Brian Kernighan.  

译文原文
> 使用恰当的参数或者环境变量，它完全与 POSIX 标准的，由 Brian Kemighan 维护的 Unix 版本的 awk 语言兼容。

改动
> 

2.
英文原文
> Perform simple network communications 

译文原文
> (未翻译)

改动
> 实现简单的网络通讯

3.
英文原文
> This Web page teaches you about ...

译文原文
> 本书会向你们传授

改动
> 本网页会向你们传授

## awk 与 gawk 的历史
1. 
英文原文
>  At that time, he also wrote the bulk of TCP/IP Internetworking with gawk (a separate document, available as part of the gawk distribution)

译文原文
> 也就是那个时候，我也用 gawk 写了一堆的 TCP/IP 代码（作为 gawk 发布版本一部分，有一个独立的文档可用）。

改动
> 当时，他也写了 TCP/IP Internetworking with gawk （一个单独可获取的文档，是 gawk 发行版本的一部分）的主体内容。

## 排版约定
1.
英文原文
> Code fragments appear in the same font and quoted, ‘like this’.

译文原文
> 代码段也以相同的字体呈现，并由“如下”来括起来。

改动
> 代码段也以相同的字体呈现，并用单引号括起来，例如‘like this’。

## 致谢
1.
英文原文
> I would like to thank Marshall and Elaine Hartholz of Seattle and
> Dr.@: Bert and Rita Schreiber of Detroit for large amounts of quiet vacation
> time in their homes, which allowed me to make significant progress on
> this @value{DOCUMENT} and on @command{gawk} itself.

译文原文
> 我也要感谢 Marshall 与 Seattle 的Elaine Hartholz ，还有 Detroit 的 Bert and Rita Schreiber 博士，
> 他们牺牲了大量的假期时间，安安静解地呆在他们的家里，使得我能够写作神速，也包括在 @command{gawk} 上的工作。

改动
> 我也要感谢 Marshall 与 Seattle 的Elaine Hartholz ，还有 Detroit 的 Bert and Rita Schreiber 博士，
> 他们牺牲了大量的假期时间——他们本可以安安静解地在家里度过——使得我在本网页的制作和 @command{gawk} 上的工作都能进展神速。

2.
英文原文
> Their feedback helped improve the final work.

译文原文
> 他们的工作使用让本书质量更优。

改动
> 他们的反馈让本书质量更优。

## 1.1.6
1.
英文原文
> Note that the single quote is not special within double quotes.

译文原文
> 注意双引号中的单引号。

改动
> 注意在双引号中的单引号不是特殊符号。


## 3.1
英文原文
> we call it a regexp constant

译文原文
> 我们称 regexp 为常量

改动
> 我们称之为正则表达式常量

## 3.4
英文原文
> For example, before the POSIX standard, you had to write /[A-Za-z0-9]/ to match alphanumeric characters. 

译文原文
> 在 POSIX 标准前，如果你写了这样的表达式 /[A-Za-z0-9]/ 来匹配字母数字字符。

改动
> 例如，在 POSIX 标准前，你必须用这样的表达式 /[A-Za-z0-9]/ 来匹配字母数字字符。

## 4.1.1
英文原文
> Because each print statement adds a newline at the end of its output,  
> this awk program copies the input with each ‘u’ changed to a newline. 

译文原文
> 由于每条记录打印时，都添加了一个换行符在输入的末尾，
> 所以，awk 程序就是将每个字母 u 换成了换行符。

改动
> 因为每个 print 语句都会在输出的末尾添加一个换行符，
> 所以，下面这个 awk 程序就是将每个字母 u 换成了换行符。

