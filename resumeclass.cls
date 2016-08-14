

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
% this through the \email command set variables used by \makeheader below
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

% creates the header at the top of the page
% I wanted to be able to have the name at the very top of the .tex
% document as a form of documentation of the author but the header
% needs to be within the resumeheader environment
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

% Used for the main body of the resume but NOT the header
% The resume header is considered a separate entity.
% Do not embed the two.
\newenvironment{resumebody} {
  % before

  % selecting the font
  \bgroup
  \centering
  \tabularx{\textwidth}{ l >{\small}X >{\small}l }
} {
  % after
  \endtabularx
  \egroup
}

% for things like 'Experience', 'Education'
\newcommand{\sectiontitle}[1] {
  {\footnotesize \so{\textbf{#1}}}
}

% Really the center column of the page, but the absolute left
% is reserved for the section title
\newcommand{\leftcolumn}[1] {
  & #1 
}

\newcommand{\rightcolumn}[1] {
  & #1 \\ \\
}

% Doesn't include the extra line break of my standard right column
\newcommand{\rightcolumnsinglebreak}[1] {
  & #1 \\
}

% fills both the absolute center and right columns of the page
\newcommand{\bigcolumn}[1] {
  & #1 \\ \\
}


% this and the below for formatting experience items
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


