

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}
\LoadClassWithOptions{article}

\RequirePackage[margin=0.75in]{geometry}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{enumerate}
\usepackage{soul}

\usepackage[sfdefault,light]{roboto}
\usepackage[T1]{fontenc}
\renewcommand{\familydefault}{\sfdefault}

% getting rid of line numbers
\thispagestyle{empty}


% header stuff
\newenvironment{resumeheader} {
  % before
} {
  % after
}

% personal information
\newcommand{\name}[1] {
  \def\resumename{#1}
}

\newcommand{\addrlineone}[1] {
  \def\resumeaddrone{#1}
}

\newcommand{\addrlinetwo}[1] {
  \def\resumeaddrtwo{#1}
}

\newcommand{\phonenumber}[1] {
  \def\phone{#1}
}

\newcommand{\email}[1] {
  \def\resumeemail{#1}
}

\newcommand{\makeheader} {
  \begin{center}
    %\fontfamily{iwona}\selectfont
    \textbf{\LARGE \resumename} \par
    \resumeaddrone \par
    \resumeaddrtwo \par
    \phone \par
    \resumeemail
  \end{center}
}

\newenvironment{resumebody} {
  % before

  % selecting the font
  %\fontfamily{iwona}\selectfont
  \bgroup
  \centering
  \tabularx{\textwidth}{ l >{\small}X >{\small}l }
} {
  % after
  \endtabularx
  \egroup
}


\newcommand{\sectiontitle}[1] {
  {\footnotesize \so{\textbf{#1}}}
}

\newcommand{\leftcolumn}[1] {
  & #1 
}

\newcommand{\rightcolumn}[1] {
  & #1 \\ \\
}

\newcommand{\bigcolumn}[1] {
  & #1 \\ \\
}

\newcommand{\leftrightcolumns}[2] {
  & #1 & #2 \\
}


\newcommand{\experiencetitle}[1] {
  \textbf{#1} 
}

\newcommand{\experiencelocation}[1] {
  \textit{#1}
}

\newenvironment{experiencenotes} {
  \begin{itemize}
} {
  \end{itemize}
}

\newcommand{\experiencenote}[1] {
  \item #1
}


