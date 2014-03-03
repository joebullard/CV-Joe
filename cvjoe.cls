%------------------------------------------------------------------------------%
% File    : cvjoe.cls
% Author  : Joe Bullard
% Updated : 2014-03-02
%
% Joe's CV Document Class
%
% Most of this is just renewing built in commands to hide all the ugly stuff
% from the main document.
%------------------------------------------------------------------------------%

\LoadClass[11pt]{report}
\ProvidesClass{cvjoe}[2014/02/24 Joes CV Class]

\RequirePackage{bibentry}
\RequirePackage{color}
\RequirePackage{enumitem}
\RequirePackage[margin=1.0in]{geometry}
\RequirePackage{marvosym}
\RequirePackage{natbib}
\RequirePackage{titlesec}

\pagestyle{empty}
\setlength{\parindent}{0em}

\definecolor{lightgray}{gray}{.6}
\definecolor{darkgray}{gray}{.3}

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {\vspace{-0.35em}{\color{lightgray}\rule[0.15em]{2.3cm}{0.4em}~}}

\titleformat{\subsection}
    {\large\scshape\raggedright}
    {}{0em}
    {\vspace{-0.3em}\hspace{2.5cm}}

\let\name\author
\let\contact\title

%\newcommand{\address}[1]{\Letter~~\parbox[t]{5cm}{#1} \\[-0.5em]}
\newcommand{\address}[1]{#1}
\newcommand{\email}[1]{\Letter~{\tt #1}}
\newcommand{\phone}[1]{\Telefon~#1}
\newcommand{\web}[1]{\Mundus~#1}

\newcommand{\header}{
    \makeatletter
    \begin{minipage}{.72\textwidth}
        {\Huge \@author} \\

        {\large\it Curriculum vitae}
    \end{minipage}%
    \begin{minipage}{.27\textwidth}
        \@title
    \end{minipage}
    \makeatother
    \vspace{-0.5em}
}

\setdescription{leftmargin=2.5cm,style=multiline,font=\color{darkgray}\normalfont}
\newenvironment{cvlist}{\begin{description}}{\end{description}\vspace{-1.3em}}

\newcommand{\present}{\emph{present}}
