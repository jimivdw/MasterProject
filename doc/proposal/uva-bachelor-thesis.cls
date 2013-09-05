\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uva-bachelor-thesis}[2012/09/14 Version 0.2 Jimi van der Woning, 2005/06/10 Version 0.1 Rein van den Boomgaard]
\RequirePackage{graphicx}

\def\subtitle#1{\gdef\@subtitle{#1}}
\def\subsubtitle#1{\gdef\@subsubtitle{#1}}
\def\organization#1{\gdef\@organization{#1}}
\def\supervisors#1{\gdef\@supervisors{#1}}

\usepackage{fix-cm}
\newcommand{\ENORMOUS}{\fontsize{100}{105}\selectfont}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[11pt,twoside]{report}

\setlength{\oddsidemargin}{4in}

%\usepackage[a4paper,scale={0.7,0.8}]{geometry}
\usepackage[a4paper,scale={0.7,0.8},left=3.8cm,right=2.5cm]{geometry}

\usepackage[sf]{titlesec}
\titleformat{\chapter}[display]
%{\cleardoublepage\sffamily\raggedleft
{\sffamily\raggedleft
\titlerule\vspace{1pc}}
{\vspace{1ex}\Large \MakeUppercase{\chaptertitlename}\ \thechapter}
{3ex}
{\Huge}
[\vspace{1pc}\titlerule]

\usepackage[svgnames]{xcolor}
\usepackage[absolute,overlay]{textpos}
\usepackage{rotating}
\definecolor{light}{gray}{0.9}
\renewcommand{\maketitle}{%
	\thispagestyle{empty}
	\hspace*{1em} 	% a fake element on the page (else texpos absolute option
			% doesn't work)
	\begin{textblock*}{12cm}(5cm,3cm)
		\noindent\large\scshape Master Software Engineering\\[2ex]
		\includegraphics[height=1.5cm]{uva_logo.pdf}
		%\Large Universiteit van Amsterdam
	\end{textblock*}
	\begin{textblock*}{12cm}(5cm,10cm)
		\noindent
		\sffamily\Huge \@title \\
		\sffamily\huge \@subtitle \\\\
		\sffamily\huge \@subsubtitle
	\end{textblock*}
	\begin{textblock*}{12cm}(5cm,17cm)
		\noindent
		\sffamily\Large \@author\\[3pc]
		\@date
	\end{textblock*}
	\begin{textblock*}{12cm}(5cm,24.5cm)
		\noindent\sffamily
		\begin{description}
		\item[\sffamily Organization:] \@organization
		\item[\sffamily Supervisors:] \@supervisors
		\end{description}
	\end{textblock*}
	\textblockcolor{LightGray}
	\begin{textblock*}{2cm}(2cm,0cm)
		\vspace*{30cm}\hspace*{1em}
	\end{textblock*}
	\begin{textblock*}{2cm}(2.7cm,26cm)
		\begin{rotate}{90}
			\noindent\scshape\Huge\textcolor{Gray}{
				Software Engineering --- University of Amsterdam}
		\end{rotate}
	\end{textblock*}
}


\endinput

