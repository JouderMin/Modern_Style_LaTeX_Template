# Modern Style LaTeX Template

## 简介

本项目为JouderMin的个人兴趣项目，用于快速记录课堂笔记，有随时的断更可能。

本项目是对Theigrams的My-Typora-Themes的LaTeX实现，项目地址[Theigrams/My-Typora-Themes](https://github.com/Theigrams/My-Typora-Themes)

## 编译

### Windows

在Windows系统下编译需要安装TeXLive2020及以上的版本，由于手头没有MikTeX的环境，所以无法确定MikTeX的兼容性。推荐使用XeTeX编译器。

### MacOS/Linux/Unix

对于在MacOS下的编译，由于本人没有MacOS/Linux/Unix的测试环境，所以无法测试。如果无法通过编译，而你又精通MacOS/Linux/Unix下的TeX编译，请向我提交Pull Request。

## 使用方式

只需要将更改文档类型为modern就行。

```LaTeX
\documentclass{modern}
```

## 本模板特色

### 现代C++代码框

实现了较为现代化的代码框样式，使用方法

```LaTeX
\begin{cpp}
    \\ 在此处插入你的代码
\end{cpp}
```

此代码框配色方案取自Atom主题One Dark，暂时无意向支持其他语言的语法高亮（也许以后会有Java和C#？）。

### 重要提示框

实现了对显示与打印都比较友好的提示框，使用方法

```LaTeX
\begin{block}{\\ 输入标题}
    \\ 输入正文
\end{block}
```

### 分隔线

实现了用于分离上下文的分隔线，使用方法

```LaTeX
\spare
```

## 鸣谢

感谢我的好朋友[ReekyStive](https://github.com/ReekyStive)，他为我的项目提出了许多宝贵的意见。

本项目使用的开源字体

* [tonsky/FiraCode](https://github.com/tonsky/FiraCode)
* [adobe-fonts/source-han-sans](https://github.com/adobe-fonts/source-han-sans)
* [stipub/stixfonts](https://github.com/stipub/stixfonts)

## 2021/06/30 更新日志#1

* 修复了``float``宏包导入错误
* 增加了斜平行号，可以在数学模式通过``\varparallel``来调用

## 2021/06/30 更新日志#2

* 增加了用于排版题目的环境``exercise``
* 引入``ntheorem``宏包作为新的定理环境
* 调整了宏包加载的顺序

## 2021/07/01 更新日志#1

* 删除了``ntheorem``宏包，定理环境换为``amsthm``+``thmtools``实现
* 引入了一些新的定理环境，[参考](https://zhuanlan.zhihu.com/p/133244838)
