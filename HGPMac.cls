\ProvidesClass{HGPMac}
\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper]{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{ctex}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{type1cm} %字号包
\RequirePackage{indentfirst}        %首行缩进宏包
\RequirePackage{geometry} %页边距
% \RequirePackage{times} %将英文字体改为Times New Roman
\RequirePackage{xeCJK} %中文字体包
\RequirePackage{titlesec}   %设置页眉页脚的宏包
\RequirePackage{graphicx}  %图片包
\RequirePackage{subfigure}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{geometry}
%设置行距

\renewcommand{\baselinestretch}{1.62}
\renewcommand{\normalsize}{\xiaosi} %正文字体小四字号

%设置首行缩进
\setlength{\parindent}{2em}                 % 首行两个汉字的缩进量
%设置页边距
\geometry{left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm}	

%设置字体命令 e.g. {\song xxx}
\setCJKfamilyfont{song}{STSong}  %宋体 song                 
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\setCJKfamilyfont{hwzs}{STZhongsong}     %华文中宋  hwzs  
\newcommand{\hwzs}{\CJKfamily{hwzs}} 
\setCJKfamilyfont{hei}{STXihei} 
\newcommand{\hei}{\CJKfamily{ht}}

%设置字号命令 e.g. {\xiaosi xxx}
\newcommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{36pt}\selectfont}           % 一号, 1.4 倍行距
\newcommand{\erhao}{\fontsize{22pt}{28pt}\selectfont}          % 二号, 1.25倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}          % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}        % 三号, 1.5倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{22pt}\selectfont}        % 小三, 1.5倍行距
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}            % 四号, 1.5 倍行距
\newcommand{\banxiaosi}{\fontsize{13pt}{19.5pt}\selectfont}    % 半小四, 1.5倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}            % 小四, 1.5倍行距
\newcommand{\dawuhao}{\fontsize{11pt}{11pt}\selectfont}       % 大五号, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}    % 五号, 单倍行距

\setmainfont{Times New Roman}

%目录部分设置
\titleformat*{\section}{\centering \xiaoer \hei \bfseries}
\titleformat*{\subsection}{ \raggedright \sihao \hei \bfseries}
\titleformat*{\subsubsection}{ \raggedright \sihao \hei \bfseries}

\titlecontents{section}[10mm]
{\song \xiaosi \bfseries}
{\contentslabel{2.3em}}
{}
{\titlerule*{.}\contentspage}

\titlecontents{subsection}[10mm]
{\song \xiaosi}
{\contentslabel{2.3em}}
{}
{\titlerule*{.}\contentspage}

\titlecontents{subsubsection}[10mm]
{\song \xiaosi}
{\contentslabel{2.3em}}
{}
{\titlerule*{.}\contentspage}

%页眉页脚
\newpagestyle{main}{            
    \sethead{}{\wuhao \hwzs 华\ 中\ 科\ 技\ 大\ 学\ 本\ 科\ 生\ 毕\ 业\ 设\ 计\ （\ 论\ 文\ ）}{}     %设置页眉
    \setfoot{}{\rule[3pt]{6.5cm}{0.04em} \qquad \thepage \qquad \rule[3pt]{7cm}{0.04em}}{}      %设置页脚，可以在页脚添加 \thepage  显示页数
    \headrule                                      % 添加页眉的下划线
    
}
\pagestyle{main}    %使用该style






\RequirePackage{bm}

%设置公式间距为零
\AtBeginDocument{
	\setlength{\abovedisplayskip}{6pt}
	\setlength{\belowdisplayskip}{6pt}
	\setlength{\abovedisplayshortskip}{0pt}
	\setlength{\belowdisplayshortskip}{0pt} 
}

%公式编号带章节
\numberwithin{equation}{section}

%重新设置公式autoref
\newcommand{\equationautorefname}{等式}

%设置图表标题的计数方式
\renewcommand{\thefigure}{\ifnum \c@section>\z@ \thesection-\fi \@arabic\c@figure}
\renewcommand{\thetable}{\ifnum \c@section>\z@ \thesection-\fi \@arabic\c@table}

%	---	定义列表项的样式
%
\RequirePackage{enumitem}
\setlist{noitemsep}

%标题设置
%添加几个新的文档属性
\def \defschool {}
\def \defclassnum {}
\def \defstunum {}
\def \definstructor {}
\newcommand{\school}[1]{\def \defschool {#1}}
\newcommand{\classnum}[1]{\def \defclassnum {#1}}
\newcommand{\stunum}[1]{\def \defstunum {#1}}
\newcommand{\instructor}[1]{\def \definstructor {#1}}

%重置命令maketitle
\renewcommand{\maketitle}[1][12em]{
	\begin{titlepage}
		\begin{center}
			\vspace*{4em}
			\includegraphics[width=7.8cm]{school.bmp}\\
			\vspace*{2em}
			{\zihao{-0} \hwzs \bfseries 本科生毕业设计[论文]}\\
			\vspace{6em}
			{\zihao{2} \heiti \bfseries \@title}\\
			\vspace{6em}
			{\zihao{3} \hwzs 
				\renewcommand\arraystretch{1.5}
				\begin{tabular}{lc}
					\makebox[4em][s]{院 \hfill 系} &
					\underline{\makebox[#1]{\defschool}} \\
					\makebox[4em][s]{专业班级} &
					\underline{\makebox[#1]{\defclassnum}} \\
					\makebox[4em][s]{姓 \hfill 名} &
					\underline{\makebox[#1]{\@author}} \\
					\makebox[4em][s]{学 \hfill 号} &
					\underline{\makebox[#1]{\defstunum}} \\
					\makebox[4em][s]{指导教师} &
					\underline{\makebox[#1]{\definstructor}} \\
			\end{tabular}}\\
			\vspace{4em}
			{\zihao{3} \hwzs \@date}\\
		\end{center}
	\end{titlepage}
}


\newcommand{\makestatement}[2][0]{
	\clearpage
	\vspace*{5mm}
	\begin{center}
	{ \hei \xiaoer \bfseries  学位论文原创性声明 }
	\end{center}
	\vspace{5mm}
	{\song \xiaosi 本人郑重声明:所呈交的论文是本人在导师的指导下独立进行研究所取得的 研究成果。除了文中特别加以标注引用的内容外，本论文不包括任何其他个人或 集体已经发表或撰写的成果作品。本人完全意识到本声明的法律后果由本人承担}
	\vspace{5mm}
	\begin{flushright}
	作者签名： \hspace{2cm} 年 \quad 月 \quad 日 \quad
	\end{flushright}
	\vspace{3cm}
	\begin{center}
	{\hei \xiaoer \bfseries 学位论文版权使用授权书}
	\end{center}
	\vspace{5mm}
	{\song \xiaosi 本学位论文作者完全了解学校有关保障、使用学位论文的规定，同意学校保 留并向有关学位论文管理部门或机构送交论文的复印件和电子版，允许论文被查 阅和借阅。本人授权省级优秀学士论文评选机构将本学位论文的全部或部分内容 编入有关数据进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学 位论文。}
	
	{\song \xiaosi 本学位论文属于1、保密 \quad $\square$，在\quad 年解密后适用本授权书 \\
	\hspace*{38mm} 2、不保密 $\square$ \\
	\hspace*{38mm} 请在以上相应方框内打”$\checkmark$“
	}
	\vspace{5mm}
	\begin{flushright}
	作者签名： \hspace{2cm} 年 \quad 月 \quad 日 \quad \\
	导师签名： \hspace{2cm} 年 \quad 月 \quad 日 \quad
	\end{flushright}

	\clearpage
}


%中文摘要环境
\newenvironment{cnabstract}[1]{
	\def \cnkeyword {#1}
	\addcontentsline{toc}{section}{摘要}
	\section*{摘\quad 要}
	
}{
	\vspace{1em}
	{\hei \bfseries 关键词：} \cnkeyword
	\clearpage
}

%英文摘要环境
\newenvironment{enabstract}[1]{
	\def \enkeyword {#1}
	\addcontentsline{toc}{section}{Abstract}
	\section*{Abstract}
}{
	\vspace{1em}
	\paragraph{\bfseries Key Words: } \enkeyword
	\clearpage
}


%公式编号带章节
\numberwithin{equation}{section}



%参考文献设置
\bibliographystyle{gbt7714-2005}

\let \oldbibliography \bibliography
\renewcommand{\bibliography}[1]{
	\clearpage
	\addcontentsline{toc}{section}{参考文献}
	\oldbibliography{#1}
}
%定义新的致谢环境
\newenvironment{thankpage}{
	\clearpage
	\addcontentsline{toc}{section}{致谢}
	\section*{致谢}
}{
	\clearpage
}