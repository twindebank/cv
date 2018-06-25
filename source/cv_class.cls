% Intro Options
\ProvidesClass{cv_class}[]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{graphicx}
\usepackage{enumitem}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Neue Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec{Helvetica Neue}\selectfont #1 \normalfont}
%\setmainfont[Color=primary]{HelveticaLight}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
%\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(158,0)
\color{date}\fontspec{Helvetica Neue UltraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Address command
\newcommand{\address}[1]{
\vspace{0.6cm}
\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
\noindent #1}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec{Helvetica Neue Light}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{headings}\fontspec{Helvetica Neue}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Helvetica Neue Thin}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Helvetica Neue Medium}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\experience}[2]{\color{subheadings}
\fontspec{Helvetica Neue Medium}\fontsize{12pt}{12pt}\selectfont\bfseries \href{#2}{\MakeUppercase{#1}} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Helvetica Neue}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\fontspec{Helvetica Neue}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Skill command
\newcommand{\skill}[1]{\color{headings}\raggedright\fontspec{Helvetica Neue}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}


% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\def\labelitemi{-}
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
\newenvironment{minitemize}{\begin{itemize} \setlength{\itemindent}{-0.15in} \itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 
\newcommand{\projectinf}[1]{\vspace{-0.6\topsep}\small 
	\begin{enumerate}[label=-,leftmargin=0.6\leftmargin]
		\item{#1} 
	\end{enumerate} 
	\vspace{-0.3\topsep}}

% Photo
\newcommand{\photo}[1]{% Create a new command for printing photo
\begin{textblock}{25}(185,4) % The position of the Last Updated text on the page (75% of the page across, 4% down)
\centering
\fboxsep1.5pt\fcolorbox{blue}{white}%
{\includegraphics[width=1.5cm,height=2.5cm,keepaspectratio]{#1}}
\end{textblock}}