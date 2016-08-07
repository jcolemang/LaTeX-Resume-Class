

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}
\LoadClassWithOptions{article}

\RequirePackage[margin=1.0in]{geometry}
\RequirePackage{tabularx}

% left for documentation
% setting the font
% \input T1fmv.fd
%\renewcommand*\sfdefault{urw}
%\renewcommand*\familydefault{\sfdefault} %% Only if the base font of the document is to be sans serif
%\usepackage[T1]{fontenc}


\newenvironment{resumeheader} {
  % before
  \begin{center}
} {
  % after
  \end{center}
  \par
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
  \fontfamily{iwona}\selectfont
  \textbf{\resumename} \par
  \resumeaddrone \par
  \resumeaddrtwo \par
  \phone \par
  \resumeemail \par
}


\newenvironment{resumebody} {
  % before

  % selecting the font
  \fontfamily{iwona}\selectfont
  \tabularx{1.0\textwidth}{  l  X  r  }
} {
  % after
  \endtabularx
}


\newcommand{\sectiontitle}[1] {
  \textbf{#1}
}

\newcommand{\leftcolumn}[1] {
  & #1 
}

\newcommand{\rightcolumn}[1] {
  & #1 \\
}

\newcommand{\bigcolumn}[1] {
  & \multicolumn{2}{>{\hsize2\hsize}X}{#1} \\
}


