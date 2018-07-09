% Intro Options
\ProvidesClass{resume}[2014/04/30 CV class]
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

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{riddhicolor}{HTML}{003399}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everything
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\fontsize{8pt}{10pt}\selectfont 
Last Updated on 2nd July 2018
\end{textblock}}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everything
\newcommand{\footer}{\begin{textblock}{120}(62,265)
\color{date}\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\fontsize{8pt}{10pt}\selectfont 
This resume is Open Source! View the source on GitHub $\rightarrow{}$Grayson112233
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
    \vspace{10pt}
	\centering{
		\sffamily
		\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Medium}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\selectfont #2
	} \\
	\vspace{10pt}
	\centering{\fontspec[Path = fonts/sanfrantext/]{SanFranciscoText-Medium}\fontsize{11pt}{14pt}\selectfont #3}
	
	\vspace{20pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Light}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Regular}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Riddhi command
\newcommand{\riddhi}[1]{\color{riddhicolor}\fontspec[Path = fonts/sanfran/]{SanFranciscoDisplay-Bold}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

