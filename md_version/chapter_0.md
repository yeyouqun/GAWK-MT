&nbsp;
## awk与 gawk 的历史
___
        编程语言菜单
        1 份 egrep，1 份 snobol 
        2 份 ed，3 份 C
        将所有部分通过 lex 与yacc 混合在一起，并且辅以少量文档，并发布。8 年后，添加多一份 egrep，以及两份的 C。文档完备然后发布。

&emsp;&emsp;awk 的名字来源于最初的设计者：Alfred V. Aho， Peter J. Weinberger 和 Brian W. Kernighan。它的第一个版本写于 1977 年的 AT&T 贝尔实验室。1985 年，新版本语言通过引入用户自定义的函数、多输入流、正则表达式，而使得其功能更加强大。新版本的 gawk 在 Unix System V Release 3.1（1987年）的时候已经广泛可用。而在 System V Release 4 (1989年) 中的版本添加了一些新的特性，并清理掉了一些语言的“暗角”行为。在 POSIX 命令语言以及工具标准中，对 awk 规范进行进一步的澄清。 gawk 的设计者与最初的 awk 设计者对于 POSIX 规范都有相应的反馈。

&emsp;&emsp;Paul Rubin在 1986 编写了 gawk，Jay Fenlason 根据 Richard Stallman 的建议完善了它。John Woods 也贡献了部分代码。1988 年跟 1989 年，David Trueman 在我的帮助下完全重构了 gawk，以解决与更新的 awk 兼容的问题。大概是 1994 年，我成为了主要的维护者。现在的版本主要着眼于 Bug 修复、性能提升，标准化，有时也添加一些新的特性。

&emsp;&emsp;1997 年 5 月，Ju ̈rgen Kahrs 觉得有必要用 awk 访问网络，在我的一些帮助下，gawk 添加进了这样的特性。也就是那个时候，我也用 gawk 写了一堆的 TCP/IP 代码（作为 gawk 发布版本一部分，有一个独立的文档可用）。他的代码最终在 gawk 3.1 版本的时候成为主流 gawk 发布版本的一部分。

&emsp;&emsp;John Haque 重写了 gawk 的内部实现，以提供awk级的调试器，这个版本在 2011 年的 4.0 版本可用。

&emsp;&emsp;请查看 A.9 gawk 的主要贡献者，在第 416 页，以了解对 gawk 作出过重要贡献的人。*TODO:link*


