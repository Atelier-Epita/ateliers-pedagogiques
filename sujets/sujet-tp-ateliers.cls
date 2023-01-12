\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sujet-tp-ateliers}[2023/01/12 v0.0.1 Sujet de TP pour les ateliers pédagogiques]
% sample software documentation format

% set default smaller margins, separated paragraphs, bigger line spacing
% (fullpage used as fallback if geometry package removed from main preamble)
\RequirePackage{fullpage,parskip}
\linespread{1.1}

% use Roboto as the main font
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[sfdefault]{roboto}
\RequirePackage[scaled=0.95]{roboto-mono}
\RequirePackage{sfmath}

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


\AtEndPreamble{%
% set some hyperref options if it's loaded
% leave loading it to the user so they can get the order right
\@ifpackageloaded{hyperref}{%
\RequirePackage{xcolor}
\providecolor{manuallinkcolor}{HTML}{004a0e}
\hypersetup{colorlinks,allcolors=manuallinkcolor}%
}{}%
% let minted's listing captions use the correct font
\@ifpackageloaded{minted}{\let\@float@c@listing\@caption}{}
}