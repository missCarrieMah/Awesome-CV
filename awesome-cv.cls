%% Start of file `awesome-cv.cls'.
%% Copyright 2015 Claud D. Park <posquit0.bj@gmail.com>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License version 1.3c,
% available at http://www.latex-project.org/lppl/.


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv}[2015/10/10 v1.1.0 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{ifthen}
% Needed to manage fonts
\ifxetex
  \RequirePackage[quiet]{fontspec}
  % To support LaTeX quoting style
  \defaultfontfeatures{Ligatures=TeX}
\else
  \RequirePackage[T1]{fontenc}
  % Replace by the encoding you are using
  \RequirePackage[utf8]{inputenc}
\fi
% Needed to manage math fonts
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/furl/latex-fontawesome)
\RequirePackage{fontawesome}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={},
  colorlinks=false
}



%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\geometry{left=1cm, top=1.4cm, right=1cm, bottom=1.4cm, footskip=.3cm}

%% Header & Footer
% Set offset to each header and offset
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------

% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

% Website colors
\definecolor{awesome-primary}{HTML}{70AFC4}
\definecolor{awesome-secondary}{HTML}{7AC1C4}
\definecolor{awesome-accent}{HTML}{8ED081}
\definecolor{awesome-text}{HTML}{2d2d2d}
\definecolor{awesome-darktext}{HTML}{414141}
\colorlet{awesome}{awesome-primary}
\colorlet{awesome}{awesome-secondary}
\colorlet{awesome}{awesome-accent}
\colorlet{awesome}{awesome-text}
\colorlet{awesome}{awesome-darktext}

% Awesome section color
\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\else%
        awesome\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
% Import 3rd party fonts
\newfontfamily\roboto[
Path=\@fontdir,
UprightFont=*-Regular,
BoldFont=*-Bold,
ItalicFont=*-Italic,
BoldItalicFont=*-BoldItalic,
SmallCapsFeatures={Letters=SmallCaps},
Numbers={OldStyle,Proportional}
]{Roboto}
\newfontfamily\robotocondensed[
Path=\@fontdir,
UprightFont=*-Condensed,
BoldFont=*-BoldCondensed,
ItalicFont=*-CondensedItalic,
BoldItalicFont=*-BoldCondensedItalic,
]{Roboto}
\newfontfamily\robotothin[
Path=\@fontdir,
ItalicFont=*Italic,
]{Roboto-Thin}

% Source Sans Pro (required to be installed on system)
\newfontfamily\sourcesans{Source Sans Pro}
\newfontfamily\sourcesanslight{Source Sans Pro Light}
\newfontfamily\sourcesanssemibold{Source Sans Pro Semibold}
\newfontfamily\sourcesansbold{Source Sans Pro Bold}

% Configure fonts for each CV elements
% For fundamental structures
\newcommand*{\headernamefont}{\fontsize{32pt}{1em}\roboto\bfseries}
\newcommand*{\headeraddressfont}{\fontsize{11pt}{1em}\sourcesans}
\newcommand*{\headersocialfont}{\fontsize{9pt}{1em}\sourcesans}
\newcommand*{\headerquotefont}{\fontsize{9pt}{1em}\sourcesans}
\newcommand*{\footerfont}{\fontsize{10pt}{1em}\sourcesans\scshape}
\newcommand*{\sectionfont}{\fontsize{16pt}{1em}\sourcesans\bfseries}
\newcommand*{\subsectionfont}{\fontsize{12pt}{1em}\sourcesans\scshape}

% For elements of entry
\newcommand*{\entrytitlefont}{\fontsize{11pt}{1em}\sourcesans\bfseries}
\newcommand*{\entrypositionfont}{\fontsize{10pt}{1em}\sourcesans\scshape}
\newcommand*{\entrydatefont}{\fontsize{10pt}{1em}\sourcesanslight}
\newcommand*{\entrylocationfont}{\fontsize{10pt}{1em}\sourcesanslight\slshape}
\newcommand*{\descriptionfont}{\fontsize{10pt}{1.2em}\sourcesanslight\upshape}

% For elements of subentry
\newcommand*{\subentrytitlefont}{\fontsize{11pt}{1em}\sourcesans\mdseries}
\newcommand*{\subentrypositionfont}{\fontsize{10pt}{1em}\sourcesans\scshape}
\newcommand*{\subentrydatefont}{\fontsize{10pt}{1em}\sourcesanslight}
\newcommand*{\subentrylocationfont}{\fontsize{10pt}{1em}\sourcesanslight\slshape}
\newcommand*{\subdescriptionfont}{\fontsize{10pt}{1em}\sourcesanslight\upshape}

% For elements of honor
\newcommand*{\honortitlefont}{\fontsize{10pt}{1em}\sourcesans}
\newcommand*{\honorpositionfont}{\fontsize{10pt}{1em}\sourcesans\bfseries}
\newcommand*{\honordatefont}{\fontsize{10pt}{1em}\sourcesans}
\newcommand*{\honorlocationfont}{\fontsize{10pt}{1em}\sourcesanslight\slshape}

% For elements of skills
\newcommand*{\skilltypefont}{\fontsize{10pt}{1em}\sourcesans\bfseries}
\newcommand*{\skillsetfont}{\fontsize{10pt}{1em}\sourcesanslight}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headernamestyle}[1]{{\headernamefont\color{darkgray} #1}}
\newcommand*{\headeraddressstyle}[1]{{\headeraddressfont\color{awesome-secondary} #1}}
\newcommand*{\headersocialstyle}[1]{{\headersocialfont\color{darkgray} #1}}
\newcommand*{\headerquotestyle}[1]{{\headerquotefont\color{darkgray} #1}}
\newcommand*{\footerstyle}[1]{{\footerfont\color{lightgray} #1}}
\newcommand*{\sectionstyle}[1]{{\sectionfont\color{awesome}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\subsectionfont\textcolor{awesome-text}{#1}}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\entrytitlefont\color{awesome-darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\entrypositionfont\color{gray} #1}}
\newcommand*{\entrydatestyle}[1]{{\entrydatefont\color{awesome} #1}}
\newcommand*{\entrylocationstyle}[1]{{\entrylocationfont\color{darkgray} #1}}
\newcommand*{\descriptionstyle}[1]{{\descriptionfont\color{darkgray} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\subentrytitlefont\color{awesome-darktext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\subentrypositionfont\color{gray} #1}}
\newcommand*{\subentrydatestyle}[1]{{\subentrydatefont\color{awesome} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\subentrylocationfont\color{gray} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\subdescriptionfont\color{darkgray} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\honortitlefont\color{gray} #1}}
\newcommand*{\honorpositionstyle}[1]{{\honorpositionfont\color{gray} #1}}
\newcommand*{\honordatestyle}[1]{{\honordatefont\color{gray} #1}}
\newcommand*{\honorlocationstyle}[1]{{\honorlocationfont\color{awesome} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\skilltypefont\color{awesome-darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\skillsetfont\color{darkgray} #1}}

%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific tickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height0.3ex \hfill \kern\z@}

%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}{
  %\descriptionstyle\faPhone
  %\descriptionstyle\faQuoteLeft
  %\descriptionstyle\faQuoteRight
  %\descriptionstyle\faGroup
  %\descriptionstyle\faGraduationCap
  %\descriptionstyle\faFax
  %\\
  \begin{center}
    \headernamestyle{
      {\robotothin\color{awesome-text} \@firstname~}{\roboto\color{awesome-primary} \@lastname}
    } \\
    \vspace{0.5mm}
    \headeraddressstyle{
      \ifthenelse{\isundefined{\@address}}{}{\@address}
    } \\
    \vspace{1mm}
    \headersocialstyle{
      \ifthenelse{\isundefined{\@mobile}}
        {}{\faMobile\ \@mobile}
      \quad\textbar\quad 
      \ifthenelse{\isundefined{\@email}}
        {}{\href{mailto:\@email}{\faEnvelope\ \@email}}
      \quad\textbar\quad 
      \ifthenelse{\isundefined{\@homepage}}
        {}{\href{http://\@homepage}{\faHome\ \@homepage}}
      \quad\textbar\quad 
      \ifthenelse{\isundefined{\@linkedin}}
        {}{\href{http://www.linkedin.com/in/\@linkedin}{\faLinkedinSquare\ \@linkedin}}
    } \\
    \vspace{1mm}
    \headerquotestyle{
    	\ifthenelse{\isundefined{\@quote}}{}{\@quote}
    } \\
    \vspace{2mm}
  \end{center}
}

% Define a footer for CV
% Usage: \makecvfooter
\newcommand*{\makecvfooter}{
  \fancyfoot{}
  \fancyfoot[L]{}
  \fancyfoot[C]{
    \footerstyle{\@firstname~\@lastname~·~Resume}
  }
  \fancyfoot[R]{
    \footerstyle{\thepage}
  } 
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{
  \phantomsection{}
  \sectionstyle{#1}
  \color{awesome-darktext}\vhrulefill{0.9pt}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{
  \phantomsection{}
  \subsectionstyle{#1}
}

% Define an environment for cventry
\newenvironment{cventries}{
  \begin{center}
}{
  \end{center}
}
% Define an entry of cv information
% Usage: \cventry{<title>}{<position>}{<location>}{<date>}{<description>}
\newcommand*{\cventry}[5]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{5.6cm}}
    \entrytitlestyle{#1} & \entrylocationstyle{#3} \\
    \entrypositionstyle{#2} & \entrydatestyle{#4} \\
    \multicolumn{2}{L{18.5cm}}{\descriptionstyle{#5}} \\
  \end{tabular*}
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{
  \begin{center}
}{
  \end{center}
}
% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{12.5cm} R{5.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{} 
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{18.5cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define an environment for cvhonor
\newenvironment{cvhonors}{
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{13.0cm} R{2.5cm}}
}{
    \end{tabular*}
  \end{center}
}

% Define an environment for cvskill
\newenvironment{cvskills}{
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    %\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{13.0cm} R{0cm}}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} R{3cm} L{15.2cm} R{0cm}}
}{
    \end{tabular*}
  \end{center}
  \vspace{4mm}
}
% Define a line of cv information
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{
   \skilltypestyle{#1} & \skillsetstyle{#2} 
  \\
}

% Define a line of cv information(language)
%\newcommand*{\cvlanguage}[3]{\cvitemwithcomment{#1}{#2}{#3}}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{
  \vspace{-4mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
    \setlength{\parskip}{1.3mm} 
    \renewcommand{\labelitemi}{\bullet}
}{
  \end{itemize}
  \end{justify}
  \vspace{-2mm}
}