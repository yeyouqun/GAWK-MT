##  Summary
1. HTML 版本中，“本书”改译为“本网页”；
2. 在部分交叉引用的文本中，原译者为了使章节指向清晰，加入了“第 x 章，第 y 页”的文本内容。这部分内容在英文原文中未出现。TeX 格式的文本改为依照英文原文，删除“第 x 章，第 y 页”的部分。
3. 英文版本正文中有的，且原译文中没翻译的部分，我自行翻译了，未记录。翻译水平很渣，请见谅。
4. 英文注释部分未翻译。
5. 全文使用中文全角括号。
6. two-way I/0 这个术语在全篇中的翻译不统一。
7. normalize 原文翻译为“正规化”，也许改为“正则化”更合适。未改动原文。
8. significand 原文翻译不统一（“实有效位”，“系数”），统一改成了“系数”。
9. struct 原文翻译为“结构”，修改为“结构体”。

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
> GNU 版本的 awk 称为 gawk。在使用恰当的参数或者环境变量的情况下，
> 它完全与 POSIX 标准 awk 语言兼容，同时与 Brian Kemighan 维护的 Unix 版本的 awk 语言兼容。
 

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
> this web page and on gawk itself.

译文原文
> 我也要感谢 Marshall 与 Seattle 的Elaine Hartholz ，还有 Detroit 的 Bert and Rita Schreiber 博士，
> 他们牺牲了大量的假期时间，安安静解地呆在他们的家里，使得我能够写作神速，也包括在 gawk 上的工作。

改动
> 我也要感谢 Marshall 与 Seattle 的Elaine Hartholz ，还有 Detroit 的 Bert and Rita Schreiber 博士，
> 他们牺牲了大量的假期时间——他们本可以安安静解地在家里度过——使得我在本网页的制作和 gawk 上的工作都能进展神速。

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

## 4.1.2
英文原文
> You might think that for text files, the nul character, which
> consists of a character with all bits equal to zero, is a good
> value to use for RS in this case:

译文原文
> 对于文本文件来说，你可能认为 nul 字符，即字符的所有位都是 0，可以用在这种情况下：

改动
> 你可能认为，在这种情况下，对于文本文件来说，所有位都由 0 组成的 nul 字符，适合作为 RS 的值： 

## 4.4
英文原文
> Some versions of awk dont rebuild $0 when NF is decremented.

译文原文
> 一些版本的 awk 当 NF 没有递减时则不会重建 $0。

改动
> 一些版本的 awk 当 NF 递减时不会重建 $0。

## 4.5
英文原文
> The moral is to choose your data layout and 
> separator characters carefully to prevent such problems.

译文原文
> 终极方法是要选择你的数据外观并仔细选择分隔符以避免这样的问题。

改动
> 终极方法是要仔细选择你的数据结构和分隔符以避免这样的问题。

## 4.5.1
英文原文
> Fields are normally separated by whitespace sequences
> (spaces, TABs, and newlines), not by single spaces.  Two spaces in a row do not
> delimit an empty field.

译文原文
> 通常的情况下，域是通过空白符序列进行分隔的（空格，TABs，或者换行符），而不是通过空格。
> 一行中的两上连续字符不会分隔出一个空域。

改动
> 通常的情况下，域是通过空白符序列进行分隔的（空格，TABs，或者换行符），而不是通过单个空格。
> 一行中的两个连续空格不会分隔出一个空域。

## 4.5.2
英文原文
> For both values of FS, fields are separated by runs
> (multiple adjacent occurrences) of spaces, TABs,
> and/or newlines. 

译文原文
> 对于 FS 的两个值，域都会被一系列的空格、TABs、与换行符分隔。

改动
> 对于 FS 的两个值，域都会被连续的（出现多个相邻的）空格、TABs、与换行符分隔。

## 4.5.4
英文原文
> The value used for the argument to -F is processed in exactly the
> same way as assignments to the predefined variable FS.

译文原文
> 用来 -F 参数的值按照命令行上的赋值参数的方式一样处理。

改动
> 参数 -F 的赋值方式和预定义参数 FS 的赋值方式完全一样。

## 4.6
英文原文
> For example, data of this nature
> arises in the input for old Fortran programs where numbers are run
> together, or in the output of programs that did not anticipate the use
> of their output as input for other programs. 

译文原文
> 例如，这种数据可能由旧的 Fortran 程序处理数据时出现，
> 或者是程序的输出不参与将其输出作为输入的程序。

改动
> 例如，这种特性可能出现在旧的 Fortran 程序的输入数据中，其中数字都是连续出现的；
> 或者是出现在一些程序的输出结果中，这些程序的设计不考虑将它的输出结果作为其他程序的输入数据。

## 4.8
1.
英文原文
> You can achieve the same effect as ‘RS = ""’ by assigning the string "\n\n+" to RS. 

译文原文
> 你可以通过将串 RS = "" 赋值给 RS，可以取得与 "\n\n+" 一样的效果。

改动
> 你可以通过将串 "\n\n+" 赋值给 RS，取得与 RS = "" 一样的效果。

2.
英文原文
> This happens by default as the result of a special feature. 
> When RS is set to the empty string and FS is set to a single character,
> the newline character always acts as a field separator.
> This is in addition to whatever field separations result from
> FS.

译文原文
> 在这种特殊情况下，这是一种默认情况。
> 当 RS 被设置成了空串，FS被设置成单个字符，域分隔符总是换行符。
> 同时也包含由 FS 产生的任意分割结果。 

改动
> 在下面这种特殊情况下，这是一种默认处理方式。
> 当 RS 被设置成了空串，并且 FS 被设置成单个字符的时候，换行符总是被作为域分隔符。
> 无论由 FS 分割的结果是什么，这都会被加入最终的域分割结果里面。

## 4.11
英文原文
> This makes it easier to use shell wildcards with your awk program

译文原文
> 这样的知，可能很容易使用右 awk 程序中使用 Shell 通配符

改动
> 这让你在 awk 程序中使用 shell 通配符变得更容易

## 5
英文原文
> The print statement is not limited when computing which values to print.

译文原文
> print 语句并不仅限于何时计算哪个值要进行打印。

改动
> 在决定打印哪个值的场景下，print 语句没什么限制。

## 5.9 
英文原文
> To write a file and read it back later on in the same awk program

译文原文
> 为了写一个文件，之后不久，在同一个程序中，从其中读取

改动
> 为了写这样一个文件，这个文件之后会在同一个 awk 程序中读取它

## 7
第七章中的 `END` 相关的行为描述为 `cleanup`。原文译为“清理”，改为了“结束”。

## 7.4.4
英文原文
> This prints the first three fields of each input record, with one field per line.
 
译文原文
> 这个例子中，会打印每个记录的前三个域，并且每个域一行。

改动
> 这个例子中，会打印每个记录的前三个域，每行打印一个域。

## 8
英文原文
> ...ends with a brief description of gawk's ability to support true arrays of arrays
 
译文原文
> 以 @command{gawk} 支持真正的数组之数组的能力为结尾。

改动
> 以简要介绍关于 gawk 支持真正的多维数组的能力为结尾。
* 之后统一将“数组之数组”改为“多维数组”。*

## 9.1.3 
英文原文
> As with input field-splitting, when the value of @var{fieldsep} is
> @w{@code{" "}}, leading and trailing whitespace is ignored in values assigned to
> the elements of
> @var{array} but not in @var{seps}, and the elements
> are separated by runs of whitespace.


译文原文
> 随着输入的域分割，当 fieldsep 的值为 “ ” 时，前导的后缀的空格会在赋值给数组元素的值中被忽略，
> 而不是在 seps 中，数组则是由一连串的空格分隔。

改动
> 随着输入的域分割，当 fieldsep 的值为 “ ” 时，前缀和后缀的空格都会在赋值给数组 array 中的元素的时候被忽略，
> 但是在 seps 中不会被忽略，并且 array 数组元素是you连续的空格分割。

## 9.1.6
英文原文
> The result of an XOR operation is 1 if either bit is 1, but not both.
 
译文原文
> XOR 的操作结果是有一个位 1 则为 1，而不是两个为 1。

改动
> XOR 的操作结果是有一个位 1 则为 1，但不能两个都为 1。

## 11.2.1
英文原文
> A common use of cut might be to pull out just the login names of
> logged-on users from the output of who.
> For example, the following
> pipeline generates a sorted, unique list of the logged-on users:
 
译文原文
> 例如 who 的输出，下面的管线会产生有序的，唯一的登录到系统中的用户列表：

改动
> cut 通常的使用方式可能是从命令 who 的输出结果中仅仅抽出已登录用户的登录名。
> 例如，下面的管线会产生有序的，唯一的登录到系统中的用户列表：

## 16.3 
英文原文
> Registering a new function

译文原文
> 注册新功能

改动
> 注册新函数
*之后对应的“功能”也改为“函数”。*

## 16.4.1
英文原文
> Retrieving

译文原文
> 返回

改动
> 检索

## 16.4.5. 
英文原文
> gawk ships with a sample extension that reads directories

译文原文
> gawk 在 read 目录下发布了一个例子扩展

改动
> gawk 发布了一个能读取目录的例子扩展


## 16.4.5. 
英文原文
> The function pointed to by this field should return true if it wants to take over two-way I/O for this @value{FN}

译文原文
> 由这个域指向的函数应该在控制指针文件的双路 I/O 时返回 true。

改动
> 如果由这个域指向的函数想控制文件的双路 I/O，它应该返回 true。


## 16.4.5. 
英文原文
> Set @code{ERRNO} directly to the string value of @code{ERRNO}.

译文原文
> 直接使用 string 的值来设置 @code{ERRNO}。

改动
> 直接使用 @code{ERRNO} 的字符串值来设置 @code{ERRNO}。

## 16.4.11.2  
英文原文
> Remove the element with the given index from the array
> represented by @code{a_cookie}.

译文原文
> 删除由 @code{a_cookie} 表示的数组中，由 @code{index} 给出的元素。

改动
> 删除由 @code{a_cookie} 表示的数组中指定索引的元素。

## 16.4.12
英文原文
> The API versions are available at compile time as C preprocessor defines
> to support conditional compilation, and as enum constants to facilitate
> debugging:

译文原文
> API 版本可以在编译的时候通过常数来得到：

改动
> API 版本可以在编译时刻获得。它在 C 语言预处理中定义以支持条件编译，以及作为枚举型常量用于 debug：


## ?
英文原文
> @command{gawk} can be compiled for MS-DOS, Windows32, and OS/2 using
> MinGW (Windows32) or Eberhard
> Mattes (EMX: MS-DOS, Windows32 and OS/2).

译文
> 可以使用来自于DJ Delorie（ 只应用于 DJGPP: MS-DOS ），MinGW（Windows32）或者 Eberhard Mattes(EMX: MS-DOS， Windows32 与 OS/2) 的 GNU 开发工具为 MS-DOS，Windows32 与 OS/2 编译 @command{gawk}。文件 README_d/README.pc 中包含了额外的提示，pc/Makefile 包含了编译编译选项的重要信息。

改动
> 可以使用来自于 MinGW（Windows32）或者 Eberhard Mattes(EMX: MS-DOS，Windows32 与 OS/2) 为 MS-DOS，Windows32 与 OS/2 编译 @command{gawk}。

## 
删除
要使用 DJGPP 工具来构建 @command{gawk}，输入‘make djgpp’。（在编译时所需要的 DJGPP 工具可以在 ftp://ftp.delorie.com/pub/djgpp/current/v2gnu/ 找到）
