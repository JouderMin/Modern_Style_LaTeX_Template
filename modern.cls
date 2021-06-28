\LoadClass{article}

\RequirePackage[fontset=none]{ctex}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{mathtools}
\RequirePackage{amsmath}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{mathdots}
\RequirePackage{url}
\RequirePackage{abstract}
\RequirePackage[superscript]{cite}
\RequirePackage{enumerate}
\RequirePackage{enumitem}
\RequirePackage[breakable,most]{tcolorbox}
\RequirePackage{pifont}
\RequirePackage{fontspec}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket},math-style=ISO]{unicode-math}
\RequirePackage{pstricks}
\RequirePackage{import}
\RequirePackage{circuitikz}
\RequirePackage{siunitx}

\everymath{\displaystyle}
\newenvironment{solution}{\begin{proof}[\indent\bf 解]}{\end{proof}}
\newenvironment{nproof}{\begin{proof}[\indent\bf 证明]}{\end{proof}}
\renewcommand{\qedsymbol}{}
\renewcommand{\d}{\mathrm{d}}

\tikzset{elegant/.style={smooth,thick,samples=50,magenta}}
\pgfplotsset{compat=1.8}
\newcommand{\vasymptote}[2][]{
    \draw [smooth,thick,magenta,#1] ({rel axis cs:0,0} -| {axis cs:#2,0}) -- ({rel axis cs:0,1} -| {axis cs:#2,0});
}

\tcbset{listing engine=listings}
\definecolor{backg}{RGB}{41,44,52}

% 页边距
\geometry{a4paper,left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}

% 在这里设置你所要的字体
\newfontfamily{\code}[Path=./font/FiraCode/]{FiraCode-Retina.ttf}
\setCJKmainfont[Path=./font/SourceHanSans/,
Extension = {.ttf},
UprightFont = {*17},
BoldFont = {*32}]{SourceHanSans}
\setmainfont[Path=./font/STIX2/,
Extension = {.otf},
UprightFont = {*-Regular}, ItalicFont = {*-Italic},
BoldFont = {*-Bold}, BoldItalicFont = {*-BoldItalic},
]{STIXTwoText}
\setmathfont[Path=./font/STIX2/]{STIXTwoMath-Regular.otf}

% 重定义的强调命令
\renewcommand{\emph}[1]{\color[HTML]{F22F27}\textbf{#1}\color{black}}
\newcommand{\spare}{\begin{center}\color[RGB]{231,231,231}\rule{\textwidth}{1.5pt}\end{center}}
% 标题格式
\titleformat{\section}[block]{\centering\zihao{1}\bfseries\color[HTML]{590009}}{}{0em}{}[]
\titleformat{\subsection}[block]{\zihao{2}\bfseries}{{\setmainfont{Source Han Sans SC}\color[HTML]{F22F27}\bfseries{\#}}\,\color{black}\thesubsection\,\,}{0em}{}[\color{red}\hrule]
\titleformat{\subsubsection}[block]{\zihao{3}\bfseries}{\color[HTML]{F22F27}\rule[-4pt]{3pt}{20pt}\,\,\color{black}\thesubsubsection\,\,}{0em}{}[]

% 段间距
\setlength{\parskip}{1em}

% 对列表类的设置
\setlist[itemize]{label=\color[HTML]{F22F27}\large\textbullet,leftmargin=\parindent,topsep=0pt}
\setlist[enumerate]{label=\color[HTML]{F22F27}\bfseries\arabic*.,leftmargin=\parindent,topsep=0pt}
\setlist[description]{font=\color[HTML]{F22F27}\bfseries,leftmargin=\parindent,topsep=0pt,style=nextline}

\newtcolorbox{block}[1]{enhanced,colback=red!10!white,colframe=red!10!white,coltitle=red!100!white,fonttitle=\vspace{2pt}\bfseries\zihao{-4},title=\ding{74} #1}
\newtcblisting{cpp}{%
    listing only,
    breakable,
    enhanced,
    colframe=white,
    colback=backg,
    left = 28pt,
    listing options = {style=c++}
}
% 代码块样式设置
\lstset{
    basicstyle          =   \addfontfeature{Color=ADB2BE}\color[RGB]{173,178,190}\code,
    keywordstyle        =   \bfseries,
    commentstyle        =   \rmfamily\itshape,
    stringstyle         =   \code,
    numbers             =   left,
    numberstyle         =   \footnotesize
    showspaces          =   false,
    numberstyle         =   \zihao{-5}\code,
    showstringspaces    =   false,
    captionpos          =   t,
    frame               =   l,
}
\lstdefinestyle{C++}{
    language        =   [11]C++,
    basicstyle      =   \zihao{-5}\code\addfontfeature{Color=ADB2BE}\color[RGB]{173,178,190},
    numberstyle     =   \zihao{-5}\code\color[RGB]{173,178,190},
    keywordstyle    =   \color[RGB]{187,121,218}\addfontfeature{Color=BB79DA},
    stringstyle     =   \color[RGB]{161,195,125}\addfontfeature{Color=A1C37D},
    rulecolor       =   \color[RGB]{173,178,190}\addfontfeature{Color=ADB2BE},
    breaklines      =   true,
    tabsize         =   4,
    columns         =   fixed,
    basewidth       =   0.58em,
    morekeywords    =   {alignas,continute,friend,register,true,alignof,decltype,goto,
    reinterpret_cast,try,asm,defult,if,return,typedef,auto,delete,inline,short,
    typeid,bool,do,int,signed,typename,break,double,long,sizeof,union,case,
    dynamic_cast,mutable,static,unsigned,catch,else,namespace,static_assert,using,
    char,enum,new,static_cast,virtual,char16_t,char32_t,explict,noexcept,struct,
    void,export,nullptr,switch,volatile,class,extern,operator,template,wchar_t,
    const,false,private,this,while,constexpr,float,protected,thread_local,
    const_cast,for,public,throw,std,include},
    emph            =   {map,set,multimap,multiset,unordered_map,unordered_set,
    unordered_multiset,unordered_multimap,vector,string,list,deque,
    array,stack,forwared_list,iostream,memory,shared_ptr,unique_ptr,
    random,bitset,ostream,istream,cout,cin,endl,move,default_random_engine,
    uniform_int_distribution,iterator,algorithm,functional,bing,numeric,},
    emphstyle       =   \color[RGB]{220,193,128}\addfontfeature{Color=DCC180}
}

\zihao{5}