%------------------------------------------------------------------------------%
% File    : resumejoe.cls
% Author  : Joe Bullard
% Updated : 2014-09-06
%
% Joe's Resume Document Class
%
% Most of this is just renewing built in commands to hide all the ugly stuff
% from the main document.
%------------------------------------------------------------------------------%

\LoadClass[11pt]{report}
\ProvidesClass{resumejoe}[2014/09/06 Joes Resume Class]

\RequirePackage{bibentry}
\RequirePackage{changepage}
\RequirePackage{color}
\RequirePackage{enumitem}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{marvosym}
\RequirePackage{multicol}
\RequirePackage{natbib}
\RequirePackage{titlesec}

\pagestyle{empty}
\setlength{\parindent}{0em}

%% Use these in preamble instead of '\author' and such

\newcommand{\name}[1]{\def\resumename{#1}}
\newcommand{\address}[2]{\def\resumeaddress{#1}\def\resumecity{#2}}
\newcommand{\email}[1]{\def\resumeemail{#1}}
\newcommand{\phone}[1]{\def\resumephone{#1}}
\newcommand{\web}[1]{\def\resumeweb{#1}}

%% Format the top-matter of the resume (name and contact). This assumes you gave
%% all of it using the commands above.

\newcommand{\blankicon}{{\color{white}\Letter}}

\newcommand{\makecontact}{%
    \begin{minipage}{0.4\linewidth}
        \Huge\resumename
    \end{minipage}%
    \hfill{}%
    \begin{minipage}{0.6\linewidth}
        \raggedleft
        \begin{minipage}{0.5\linewidth}
            \Letter~\resumeaddress \\
            \blankicon~\resumecity \\
            \Email~\texttt{\resumeemail} \\
            \Telefon~\resumephone \\
            \Mundus~\resumeweb
        \end{minipage}
    \end{minipage}
    \vspace{0.2em}
}

\newcommand{\dateitem}[3]{\textbf{#1}\hfill #2 \\ {#3}\vspace{1em}}
\newcommand{\nameditem}[2]{\textbf{#1} #2 \\}
\newcommand{\indenteditem}[1]{\hangindent=2em #1 \\[-0.5em]}
\newcommand{\jobitem}[4]{\textbf{#1}\hfill #2 \\ {#3}\vspace{-0.75em}\begin{itemize}#4\end{itemize}}

%% Sections will be in all-caps with first letter larger, followed by a full
%% horizontal rule

\titleformat{\section}
    {\vspace{-1.75em}\Large\scshape\raggedright}
    {}
    {0em}
    {}
    [\vspace{-0.75em}{\rule{\linewidth}{0.05em}}\vspace{-0.75em}]

\setitemize{leftmargin=1.3em,itemsep=-0.5em,label=$\triangleright$}

\newcommand{\present}{\emph{present}}
