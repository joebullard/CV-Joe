%------------------------------------------------------------------------------%
% File    : cvjoe.cls
% Author  : Joe Bullard
% Updated : 2014-11-04
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
\RequirePackage[letterpaper,margin=1.0in,top=0.75in,bottom=0.75in]{geometry}
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

%% Use these in preamble instead of '\author' and such
\newcommand{\name}[1]{\def\cvname{#1}}
\newcommand{\address}[2]{\def\cvaddress{#1}\def\cvcity{#2}}
\newcommand{\email}[1]{\def\cvemail{#1}}
\newcommand{\phone}[1]{\def\cvphone{#1}}
\newcommand{\web}[1]{\def\cvweb{#1}}

\newcommand{\blankicon}{{\color{white}\Letter}}
\newcommand{\makecontact}{%
    \begin{minipage}{0.55\linewidth}
        \Huge\cvname

        {\large\it Curriculum vitae}
    \end{minipage}%
    \hfill{}%
    \begin{minipage}{0.44\linewidth}
        \raggedleft
        \begin{minipage}{0.6\linewidth}
            \Letter~\cvaddress \\
            \blankicon~\cvcity \\
            \Email~\cvemail \\
            \Telefon~\cvphone \\
            \Mundus~\cvweb
        \end{minipage}
    \end{minipage}
    \vspace{0.2em}
}

\setdescription{leftmargin=2.5cm,style=multiline,font=\color{darkgray}\normalfont}
\newenvironment{cvlist}{\begin{description}}{\end{description}\vspace{-1.3em}}

\newcommand{\present}{\emph{present}}
