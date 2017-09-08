

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}
\LoadClassWithOptions{article}

\usepackage[left=0.4in, right=0.4in, top=0.5in, bottom=0.5in]{geometry}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{soul}

%\usepackage{enumitem}
%\setlist{nolistsep}

% interesting serif font, sort of a medieval look, particularly
% in the J's
%\usepackage{gentium}

% good serif font. I would describe it as professional, maybe
% slightly conservative
%\usepackage{newtxtext}

% solid sans serif font, looks modern, something I would see on the web
% \usepackage[sfdefault,light]{roboto}

% uncomment if using a sans serif font
% \renewcommand{\familydefault}{\sfdefault}
% \usepackage[T1]{fontenc}

% getting rid of line numbers
\thispagestyle{empty}



\newenvironment{resumeheader} {
  \centering
  \tabularx{\textwidth}{ X r }
} {
  \endtabularx
  \vspace{3mm}
}
\newcommand{\name}[1] {%
  \multirow{2}{*}{\textmd{\Huge \textsc{#1}}}
}

\newcommand{\addrlineone}[1] {%
  & {\small #1} \\
}

\newcommand{\addrlinetwo}[1] {%
  & {\small #1} \\
}

\newcommand{\phonenumber}[1] {%
  & {\small #1} \\
}

\newcommand{\email}[1] {%
  & {\small #1} \\
}

\newcommand{\website}[1] {%
  & {\small #1} \\
}

\newcommand{\profiles}[1] {%
  & {\small #1} \\
}



% Used for the main body of the resume but NOT the header
% The resume header is considered a separate entity.
% Do not embed the two.
\newenvironment{resumebody} {
  % selecting the font
  \bgroup%
  \centering
  \tabularx{\textwidth}{ l >{\small}X >{\small}r }
} {
  \endtabularx%
  \egroup%
}

% for things like 'Experience', 'Education'
\newcommand{\firstsectiontitle}[1] {%
  \cline{1-1} \textsc{#1}
}

\newcommand{\sectiontitle}[1] {%
  \textsc{#1}
}
% % for things like 'Experience', 'Education'
% \newcommand{\sectiontitle}[1] {%
%   \noalign{\medskip} {\footnotesize \uppercase{\so{\textbf{#1}}}}
% }

% Really the center column of the page, but the absolute left
% is reserved for the section title
\newcommand{\leftcolumn}[1] {%
  & #1
}

\newcommand{\rightcolumn}[1] {%
  & #1 \\
}

% fills both the absolute center and right columns of the page
\newcommand{\bigcolumn}[1] {%
  & \multicolumn{2}{X}{\small #1} \\
}


% this and the below for formatting experience items
\newcommand{\experiencetitle}[1] {%
  \textbf{#1}
}

\newcommand{\experiencelocation}[1] {%
  \textit{#1}
}

\newenvironment{experiencenotes} {%
  \begin{itemize}
} {
  \end{itemize}
}

\newcommand{\experiencenote}[1] {%
  \item #1
}
