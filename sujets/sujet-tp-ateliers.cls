\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sujet-tp-ateliers}[2023/04/13 v0.2.1 Sujet de TP pour les ateliers pédagogiques]
% sample software documentation format


% set default smaller margins, separated paragraphs, bigger line spacing
% (fullpage used as fallback if geometry package removed from main preamble)
\RequirePackage{fullpage,parskip}
\linespread{1.1}

% load the base class with default options
\LoadClass[12pt,a4paper]{article}

% extra front matter commands
\DeclareRobustCommand*{\logo}[1]{\gdef\@logocmd{#1}}
\DeclareRobustCommand*{\version}[1]{\gdef\@ver{Version #1}}

% default values
\gdef\@logocmd{\@latex@warning{No logo command specified for title page. Ignoring.}}
\gdef\@ver{\@latex@warning{No version number specified for title page. Ignoring.}}

% modify the stock \maketitle command
\renewcommand\maketitle{
\begin{titlepage}
\centering
\@logocmd\par
\vspace{100pt}
{\huge\bfseries\@title\par}
\bigskip
{\Large\@ver\par}
\vfill
{\Large \@author\par}
\@date
\end{titlepage}
}

% rename content table
\renewcommand*\contentsname{Sommaire}
% change section numbering to Roman
\renewcommand\thesection{\Roman{section}}


%% Custom macros %%

% doclink
\newcommand{\doclink}[2]{\href{#1}{#2}\footnote{\url{#1}}}

% break line
\newcommand{\br}{\vspace{10pt}}

% mono
\newcommand{\mono}[1]{\small\fcolorbox{gray}{gray!30!white}{\texttt{#1}}}

% illustrate 
% (preconfigured figure to illustrate content)
\newcommand{\illustrate}[2]{
	\begin{figure}[ht]
		\centering
		\includegraphics[width=12cm]{images/#1}
		\caption{\textit{#2}
	\end{figure}}
}

% bonus
\newcommand{\bonus}[1]{
    \begin{tcolorbox}[
        enhanced,
        colback=yellow-atelier!15,
        colframe=blue-atelier!80!black,
        coltitle=black,
        colbacktitle=blue-atelier!35!white,
        title={\includegraphics[height=10pt]{../../static/bonus} \hspace{1.5pt} \normalsize{\textbf{BONUS}}},
        attach boxed title to top left={yshift=-10pt,xshift=10pt},
        leftrule=2mm,
        top=10pt
        ]
        {#1}
    \end{tcolorbox}
}

% hint
\newcommand{\hint}[1]{
    \begin{tcolorbox}[
        enhanced,
        colback=yellow-atelier!15,
        colframe=yellow-atelier!80!black,
        coltitle=black,
        colbacktitle=yellow-atelier!50!white,
        title={\includegraphics[height=10pt]{../../static/hint} \hspace{1.5pt} \normalsize{\textbf{HINT}}},
        attach boxed title to top left={yshift=-10pt,xshift=10pt},
        leftrule=2mm,
        top=10pt
        ]
        {#1}
    \end{tcolorbox}
}

% warning
\newcommand{\warning}[1]{
    \begin{tcolorbox}[
        enhanced,
        colback=yellow-atelier!15,
        colframe=red-atelier!70!black,
        coltitle=black,
        colbacktitle=red-atelier!70!white,
        title={\includegraphics[height=10pt]{../../static/warning} \hspace{1.5pt} \normalsize{\textbf{WARNING}}},
        attach boxed title to top left={yshift=-10pt,xshift=10pt},
        leftrule=2mm,
        top=10pt
        ]
        {#1}
    \end{tcolorbox}
}


\AtEndPreamble{%
% set some hyperref options if it's loaded
% leave loading it to the user so they can get the order right
\@ifpackageloaded{hyperref}{%
\providecolor{yellow-atelier}{HTML}{fab60a}
\providecolor{dark-yellow-atelier}{HTML}{ba8807}
\providecolor{red-atelier}{HTML}{fa1664}
\providecolor{green-atelier}{HTML}{23fa37}
\providecolor{blue-atelier}{HTML}{235cfa}
\hypersetup{colorlinks,allcolors=dark-yellow-atelier}%
}{}%
}