

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resumeclass}
\LoadClassWithOptions{article}

\usepackage[margin=0.8in]{geometry}
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
\usepackage[sfdefault,light]{roboto}

% uncomment if using a sans serif font
\renewcommand{\familydefault}{\sfdefault}
\usepackage[T1]{fontenc}

% getting rid of line numbers
\thispagestyle{empty}


% header stuff
\newenvironment{resumeheader} {
  \begin{center}
} {
  \end{center}
}

% personal information
% this through the \email command set variables used by \makeheader below
\newcommand{\name}[1] {%
  \textmd{\Huge \textsc{#1}} \par
}

\newcommand{\addrlineone}[1] {%
  {\small #1} \par
}

\newcommand{\addrlinetwo}[1] {%
  {\small #1} \par
}

\newcommand{\phonenumber}[1] {%
  {\small #1 } \par
}

\newcommand{\email}[1] {%
  {\small #1} \par 
}

\newcommand{\other}[1] {%
  {\small #1} \par
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
\newcommand{\sectiontitle}[1] {%
  \noalign{\medskip} {\footnotesize \uppercase{\so{\textbf{#1}}}}
}

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


