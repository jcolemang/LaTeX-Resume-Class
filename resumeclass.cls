

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

\newcommand{\email}[1] {
  \def\resumeemail{#1}
}

\newcommand{\makeheader} {
  \resumename \par \resumeemail
}


\newenvironment{resumebody} {
  % before

  % selecting the font
  \fontfamily{iwona}\selectfont
  \tabularx{1.0\textwidth}{ l | X r }
} {
  % after
  \endtabularx
}


\newcommand{\leftcolumn}[1] {
  #1
}

\newcommand{\centercolumn}[1] {
  & #1 
}

\newcommand{\bigcentercolumn}[1] {
  & #1 \\
}

\newcommand{\rightcolumn}[2] {
  & #1 \\
}


