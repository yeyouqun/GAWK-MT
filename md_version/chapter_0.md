## awk 与 gawk 的历史
        编程语言菜单
        1 份 egrep，1 份 snobol[1]
        2 份 ed，3 份 C
        将所有部分通过 lex 与yacc 混合在一起，并且辅以少量文档，并发布。8 年后，添加多一份 egrep，以及两份的 C。文档完备然后发布。

&emsp;&emsp;awk 的名字来源于最初的设计者：Alfred V. Aho， Peter J. Weinberger 和 Brian W. Kernighan。它的第一个版本写于 1977 年的 AT&T 贝尔实验室。1985 年，新版本语言通过引入用户自定义的函数、多输入流、正则表达式，而使得其功能更加强大。新版本的 gawk 在 Unix System V Release 3.1（1987年）的时候已经广泛可用。而在 System V Release 4 (1989年) 中的版本添加了一些新的特性，并清理掉了一些语言的“暗角”行为。在 POSIX 命令语言以及工具标准中，对 awk 规范进行进一步的澄清。 gawk 的设计者与最初的 awk 设计者对于 POSIX 规范都有相应的反馈。

&emsp;&emsp;Paul Rubin在 1986 编写了 gawk，Jay Fenlason 根据 Richard Stallman 的建议完善了它。John Woods 也贡献了部分代码。1988 年跟 1989 年，David Trueman 在我的帮助下完全重构了 gawk，以解决与更新的 awk 兼容的问题。大概是 1994 年，我成为了主要的维护者。现在的版本主要着眼于 Bug 修复、性能提升，标准化，有时也添加一些新的特性。

&emsp;&emsp;1997 年 5 月，Ju ̈rgen Kahrs 觉得有必要用 awk 访问网络，在我的一些帮助下，gawk 添加进了这样的特性。也就是那个时候，我也用 gawk 写了一堆的 TCP/IP 代码（作为 gawk 发布版本一部分，有一个独立的文档可用）。他的代码最终在 gawk 3.1 版本的时候成为主流 gawk 发布版本的一部分。

&emsp;&emsp;John Haque 重写了 gawk 的内部实现，以提供awk级的调试器，这个版本在 2011 年的 4.0 版本可用。

&emsp;&emsp;请查看 A.9 gawk 的主要贡献者，在第 416 页，以了解对 gawk 作出过重要贡献的人。*TODO:link*

&nbsp;

    注释：
    1. SNOBOL 语言，一种面向字符串符号（StriNg Oriented symBOlic Language）语言。——译者

&nbsp;
## 玫瑰别名

&emsp;&emsp;awk 语言已经进化了多年，在 附录 A awk 语言的演化，在第 404 页，有完全的列表。在本书中所涉及的我们可以称为“new awk”。类似的，awk 的原始版本称为“old awk”。

&emsp;&emsp;在现在多数的系统中，你运行 awk 工具你都有一些版本的新 awk。[1]如果你的系统中的标准 awk 是旧的版本，你用下面的代码测试，就可以得到这样的结果：

```
$ awk 1 /dev/null
error  awk: syntax error near line 1
error  awk: bailing out near line 1
```

在这个例子中，你应该能查找到一新版本的awk，或者直接安装 gawk 即可。

&emsp;&emsp;在整本书中，如果所涉及的所有语言特性，都在一个完整实现了 POSIX 标准的awk中找到，我们为了简化，就使用 awk 来指代。当提到的特性特定于 GNU 版本，我们则使用 gawk 指代。

&nbsp;

    注释：
    1. 只有在 Solaris 的系统中依然使用旧awk 作为默认的 awk 工具。更为现代的 awk 则位于这些系统中的 /usr/xpg6/bin 目录下。

&nbsp;
## 使用本书

&emsp;&emsp;awk 这个词，即指代特定的程序，也表示你要用于告诉这个程序所做事情的语言。当需要特别小心时，我们称之为“awk 语言”，以及“awk 工具”。本书既说明如何用 awk 语言编写程序，也说明如何来运行 awk 工具。“awk 程序”术语则指用 awk 语言编写的程序。

&emsp;&emsp;本书主要涉及 POSIX 标准所定义的awk特性。也包括在 gawk 中实现了的那些特性。这么处理，在于试图描述 gawk 与其他 awk 实现版本[1]之间的差异。最后，会提及那些在 gawk 中实现了，但不在 awk POSIX 标准中定义的特性。

&emsp;&emsp;本书既可以作为教程，又可以作为参考。如果你是个新手，你可以跳过那些复杂的部分。你也可以忽略那些交叉参考；他们主要用于专家级用户，同时作为信息参考以及用于本书的 HTML 版本。

&emsp;&emsp;在全书中还分布有一些边侧栏。它们主要对相关的点进行更完整全面的解释，但是第一次读本书时可能不太有兴趣涉猎。所有在边侧栏的内容会在索引中出现。

&emsp;&emsp;在多数据情况下，我们使用的例子都是完整的 awk 程序。一些进阶部分的小节，仅显示 awk 程序的一部分，以此来说明正在进行描述的概念。

&emsp;&emsp;本书主要目标人群主要集中在那些还没接触过 awk 的人，书中相当多的信息对于专家也非常有用。对于 awk POSIX 标准的部分更是如此。包括在第十章 awk 函数库，在第 221 页， 以及第十一章 实用的 awk 程序，在第 253 页，中的例子应该会相当有趣。*TODO:link*

&emsp;&emsp;本书分为如下这些部分：
#here
* 第一部分对awk语言以及 gawk 程序进行详细描述。通过从最基础的开始，不断详解awk的所有特性。它们包含如下章节：

- 第一章 开始awk， 在第 20 页，包括一些使用awk的基本内容。

    第二章 运行awk与 gawk， 在第 35 页，描述如何运行 gawk、命令行参数的意义，以及它如何来查找awk程序源代码。

    第三章 正则表达式， 在第 50 页，总体介绍正则表达式，尤其是那些 POSIX awk以及 gawk 所支持的内容。

    第四章 读取输入文件， 在第 63 页，描述 awk 如何来读取数据。本章中介绍记录(Records）与域（Fields）的概念，也包括 getline 命令。I/O 重定向是首先要描述的部分，而网络 I/O 则简单涉及。

    第五章 打印输出， 在第 94 页，介绍在 awk 程序中如何使用 print 与 printf 产生输出。

    第六章 表达式， 在第 112 页，介绍表达式，这些表达式是构建程序代码块，并完成目标的基础。

    第七章 模式、动作与变量， 在第 138 页，描述如何为匹配记录编写模式，即当某个记录匹配时所执行的动作。同时还包括 awk 与 gawk 所使用的预定义变量。

    第八章 awk 数组， 在第 166 页，包括 awk 中的唯一的数组结构，关联数组。删除数组元素以及整个数组，同时也涉及gawk中的数组的排序。在本章还包括 gawk 如何来提供数组之数组的实现方式。

    第九章 函数， 在第 182 页，描述 awk 与 gawk 所提供的内建函数，以及用户自定义函数。讨论 gawk 如何来间接调用函数。

    第二部分展示如何使用awk与 gawk 来解决实际问题。这里有非常多的代码供读者阅读与学习。这个部分包括如下各章：

    第十章 awk 函数库，在第 221 页，展示大量的可以通过 awk 程序来调用的函数。

    第十一章 实用的 awk 程序， 在第 253 页，有许多的 awk 程序，通过阅读这两章，可以让你看到 awk 程序如何来解决真正的问题。

    第三部分关注特定于 gawk 的特性，它们包括如下各章：

    第十二章 gawk 的高级特性，在第 297 页，描述各种高级特性。其中包括如来控制数组遍历的顺序、与另一个进程之间的双向通信、执行 TCP/IP 通信、测评你的 awk 程序。

    第十三章 gawk 的国际化， 在第 311 页，描述如何将程序消息在运行时翻译成不同语言的特性。

    第十四章 调试 awk 程序，在第 320 页，描述 gawk 调试器。

    第十五章 算术运算与gawk 中的任意精度算术运算，在第 336 页，描述高级的数学计算工具。

    第十六章 编写 gawk 扩展，在第 349 页，描述如何通过编写C与C++ 扩展为gawk添加新变量与函数。

    第四部分包括一些附录，名词解释，以及本书代码所使用的两个许可。它们包含如下附录：

    附录 A awk 语言的演化，在第 404 页，描述 awk 语言从第一个版本到现在的演化过程。同时也描述 gawk 在不同的时间内所引入的特性。

    附录 B 安装 gawk，在第 419 页，描述如何获取 gawk，如何在 POSIX 兼容的系统中编译，以及如何在非 POSIX 系统中编译与使用它。介绍如何来报告 gawk Bug，以及介绍可以自由获取 awk 的地方。

    附录C 实现提示，在第 439 页，描述如何禁用 gawk 扩展，以及如何向 gawk 贡献新代码，还包括 gawk 未来可能的开发方向。


    附录D 基本编程概念，在第 450 页，为那些初识计算编程的人提供一些粗略的背景资料。

    名词解释，在第 453 页，定义大多数的本书中所用到的术语的意义，如果你看到你不熟悉的，可以参考这里。

    GNU 通用公共许可，在第 465 页，与 GNU 自由文档许可，在第 466 页，提供本书中源代码以及本书所使用到的两个许可证协议。
&nbsp;

    注释：
    1. 所有这些差异都归集在“awk 与 gawk 之间的差异”下。 

排版约定

本书是通过 TextInfo  完成的。这是一种文档格式化语言。单一的 TexInfo 源文件，即可用于产生在线版本的文档，也可以产生打印输出的文档。因为这个原因，其排版约定与你所读其他的书可能有一些差异。

你在命令行上输入的例子，由通用的Shell 主次提示符，‘$’与‘>’引导。命令行的输出由字符“-|”引导。这代表了命令行的典型输出。错误信息以及其他的命令行标准错误输出则由“error”引导，例如：

$ echo hi on stdout

-|hi on stdout

$ echo hello on stderr 1>&2

errorhello on stderr

在文本中，所有与程序相关的东西，如命令名、变量和函数名、字串、数据、正则表达式常量都以这样的字体出现。代码段也以相同的字体呈现，并由“如下”来括起来。由用户或者程序员替换的部分也用这个字体。选项是如–f 这样的参数。文件名由/path/to/ourfile 这样的串提示。如果有什么东西需要特别强调，如某个点上需要强调，也这么处理。第一个出现的术语，同一个句子中的先前出现的术语，包括其定义也用相同的字体。

你从键盘上键入的字符也用这样的字体呈现。对于一些特别的“控制字符”，这些字符是需要你同时键入 CONTROL 键以及另一个键来输入。比如Ctrl-d 需要首先按下并保持 CONTROL 键，然后敲击d 键，然后再释放两个键。

为了简单处理，在整本书中，我们把Brian Kernighan’s版本的awk 称为“BWK awk”（查看B.5其他可自由获取的 awk 实现，在第 435 页，查看这个版本与其他版本的信息）。

暗角

暗角总是存在的——无论你多么仔细，总是有一些更小的，黑暗的地方。

—Brian Kernighan

在没有做 POSIX标准（以及没写 GAWK: Effective AWK Programming）之前，awk特性的文档少得可怜，甚至是没有文档。对于这样的特性（经常称为“暗角”）会通过手电的图形在页边上给予提示，正如这个页所示的。它们也出现在索引中的“暗角”区。

但是，正如开放性引述所提示的，在定义上对暗角的覆盖是不完全的。

对于awk标准语言的扩展，很多awk实现都支持，他们用“(c.e)”进行标示，并在索引中的“通用扩展”以及“扩展，通用”中进行列出。

GNU 项目及本书

自由软件基金会是一个非营利性组织，其专注于开发与发布可自由分发的软件。它由Richard M. Stallman——即最初的 Emacs 编辑器的作者——创建。GNU 的 Emacs 软件也是目前用得最广泛的 Emacs 版本。

GNU 项目是自由软件基金会的项目，其目前依然还在持续地为创建一个完全可自由发布，与POSIX兼容的计算环境而努力。自由软件基金会通过“通用公共请可”（GPL）来保证其下的软件的源代码对于终端用户总是可用的。GPL 的复本已经包含在本书中（GNU 通用公共许可，在第 465 页）。GPL 也应用于用 C 写成的 gawk。要查找更多的关于自由软件基金会以及GNU项目的在线信息，你可以查看 GNU 项目的主页。本书也可以从 GNU 站点上阅读。

Shell，编辑器（Emacs），高度可移植的 C、C++ 与 Object-C 编译器，符号调试器以及大量的小工具（如 gawk），都已经完成并可自由获取。GNU 操作系统内核（HURD）也已经发布，只是还处于开发的早期阶段。

在 GNU 操作系统完全开发好前，你应该考虑使用 GNU/Linux，一个可自由发布的，Unix-like 的操作系统，用于 Intel、Power 这样的构架，Sun Sparc，IBM S/390 等其他系统。 很多的 GNU/Linux 发行版本都可以通过互联网下载。

你正在阅读的这本书也是免费的——最起码的。这里面的信息对任何一个人都是免费的。也包括与 gawk 相关的，对于机器可读的源代码。（花一点时间阅读一下在GNU 自由文档许可，在第 466 页，中的自由文档许可证协议。）

此书已经经过了多个版本。Paul Rubin写了第一份 GAWK Manual，大概有40页。Diane Close 与 Richard Stallman丰富了它，产生了一个大概90页的版本，它只针对最初的，“旧”版本的awk。

如何贡献

作为 GNU awk的维护者，我曾经想着我应该能够管理这一大堆的公开可得的awk程序，我甚至招募过贡献者。从互联网可以得到我想要的东西，能够帮助 gawk 的发布版保持在一个可管理的大小。

最原始的材料，如本书，还可以从ftp://ftp.freefriends.org/arnold/Awkstuff获取，为了把这个事情做得更为开放广泛，我还申请了awk.info域名。

但是，我发现我没有时间完全地来管理这些分布的代码：文档已经不再增长，而域名已经几年前就不能使用了。

2008年的晚些时候，有志愿者设立了awk相关的网站——http://awk.info——工作做得相当棒。

如果你写过一个有味的awk程序，或者写了 gawk 扩展并且希望与其他人分享，请看http://awk.info/?contribute来了解如何将它发布到网站上。

致谢

最初的 The GAWK Manual 的感谢如下：

很多的人需要感谢，因为他们帮助产生了这个手册。Jay Fenlason 提供了许多的想法与例子。Richard Mlynarik 与 Robert Chassell 给了文档非常有帮助的点评。John W写了A Supplemental Document for AWK 文档。UC San Diego 化学部的 Pierce 指出几个问题，即与 awk 实现有关，也与手册有关，不然这些问题会逃过我们的眼睛。

我要感谢Richard M. Stallman，感谢他对美好世界的愿景，并有勇气成立 FSF 并开启 GNU 项目。

本书早期版本的感谢如下：

下面的人（按字母顺序）为本书的不同版本提供了很好的点评：Rick Adams， Dr. Nelson H.F. Beebe， Karl Berry， Dr. Michael Brennan， Rich Burridge， Claire Cloutier， Diane Close， Scott Deifik， Christopher (“Topher”) Eliot， Jeffrey Friedl， Dr. Darrel Hankerson， Michal Jaegermann， Dr. Richard J. LeBlanc， Michael Lijewski， Pat Rankin， Miriam Robbins， Mary Sheehan， 和 Chuck Toporek。

Robert J. Chassell在使用 Texinfo 上提供了非常有价值的建议。它也应该得到特别感谢，因为他说服我不要用How to Gawk Politely这样的书名。Karl Berry在 Texinfo 中的 TEX 部分给予了相当大的帮助。我也要感谢Marshall 与 Seattle 的Elaine Hartholz ，还有 Detroit 的 Bert and Rita Schreiber 博士，他们牺牲了大量的假期时间，安安静解地呆在他们的家里，使得我能够写作神速，也包括在 gawk 上的工作。

SSC的Phil Hughes借给我他的笔记本 GNU/Linux 系统，不是一次，而是两次，他以这样的一种方式使我在离开家的时候做了大量的工作。

David Trueman应该得到特别的致谢。他自告奋勇地承担起了优化 gawk 的工作，因此 gawk 才会执行得如此之好，没有 Bug。尽管他现在不再介入 gawk 的工作，但是与他在这个项目上一起工作相当愉快。

GNITS邮件列表中的那些无畏的成员们，以及最值得尊敬的Ulrich Drepper为设计国际化特性提供了无价的帮助与反馈。

Dr. Nelson Beebe， Andreas Buening， Dr. Manuel Collado， Antonio Colombo， Stephen Davies， Scott Deifik， Akim Demaille， Darrel Hankerson， Michal Jaegermann， J¨urgen Kahrs，Stepan Kasal， John Malmberg， Dave Pitts， Chet Ramey， Pat Rankin， Andrew Schorr， Corinna Vinschen， 跟 Eli Zaretskii（按字母顺序）组成了目前的 gawk “霹雳移植性小组”。如果没有他们的艰苦工作与帮助，gawk 不会今天有如此稳定，可移植的程序。与这样的一群好人小组一起工作曾经是也将一直是件快乐的事情。

许多人贡献了相当多的代码与文档，他们可以在A.9 gawk 的主要贡献者 ，在第 416 页，中有完整的列表。

谢谢Michael Brennan写的序言。

谢谢Patrice Dumas新写的makeinfo程序，也谢谢Karl Berry持续工作使用 Texinfo 这样的标志语言如此牛B。

Robert P.J. Day， Michael Brennan， 还有 Brian Kernighan非常好心地作为了本书 2015版本的审核者，他们的工作使用让本书质量更优。

我还要感谢Brian Kernighan，因为在测试与调试 gawk 期间提供的无价帮助，也为他在澄清无数的语言疑点上的的持续帮助与建议。

Brian是一流程序员与技术作者，我要（又一次）感谢他，因为他持续的友谊与为我树立起来的近30年的模范作用。有这样的人作为评论人真是大幸。而他一直以来都如此谦卑。

我还得感谢我的内人，Miriam，因为她的耐心，在这个项目的多个版本之间作为第一读者，同时还与我分享电脑。还要感谢我的老爸老妈，因为他们的爱与生而育我的艰辛。最后，我也要把我的感谢献给 G-d ，是他给我了许多机会，礼物，而这些礼物使我能够更好地利用这些机会。

Arnold Robbins

Nof Ayalon

Israel

February 2015

 
