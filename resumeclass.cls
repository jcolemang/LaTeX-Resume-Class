

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


\newenvironment{resume} {
  % before

  % selecting the font
  \fontfamily{iwona}\selectfont
  \@float{table}
  \begin{tabularx}{1\textwidth}{ l | l | r}

} {
  % after
  \end{tabularx}
  \end@float
}


\newenvironment{header} {
  % before
} {
  % after
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
  \resumename & \resumeemail & Just for fun \\
}


