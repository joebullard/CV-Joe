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
\ProvidesClass{cvjoe2}[2015/02/26 Joes new CV Class]

\RequirePackage{bibentry}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage[letterpaper,margin=1.0in,top=0.75in,bottom=0.5in]{geometry}
\RequirePackage{marvosym}
\RequirePackage{natbib}
\RequirePackage{titlesec}
\RequirePackage{array}

\pagestyle{empty}
\setlength{\parindent}{0em}

\definecolor{lightgray}{gray}{.6}
\definecolor{darkgray}{gray}{.3}

%% Use these in preamble instead of '\author' and such
\newcommand{\name}[1]{\def\cvname{#1}}
\newcommand{\address}[1]{\def\cvaddress{#1}}
\newcommand{\email}[1]{\def\cvemail{#1}}
\newcommand{\phone}[1]{\def\cvphone{#1}}
\newcommand{\web}[1]{\def\cvweb{#1}}

%% Delimiter between each contact item
\newcommand{\cvcontactdelim}{$\quad\bullet\quad$}

%% Make the top-matter
\newcommand{\makecontact}{%
    \centering

    {\Huge\scshape\cvname} \\[1em]

    {\large\it Curriculum vitae} \\[0.5em]

    {\small
        \Letter~\cvaddress

        \Email~\cvemail
        \cvcontactdelim
        \Telefon~\cvphone
        \cvcontactdelim
        \ComputerMouse~\cvweb
    }

    \vspace{-0.5em}
    {\color{darkgray}\rule{\textwidth}{0.01em}}
    \vspace{-0.75em}
}

\titleformat{\section}
    {\color{blue!50!black}\Large\scshape\raggedright} % format
    {}      % label
    {0em}   % sep
    {}      % before code
    []      % after code
\titlespacing{\section}
    {0em}     % left
    {-0.5em}  % before sep
    {0.5em}   % after sep

\titleformat{\subsection}
    {\large\scshape\raggedright} % format
    {}                           % label
    {0em}                        % sep
    {%
        \begin{tabular}{@{}r@{}}
    }                            % before code
    [
        \end{tabular}
    ]                           % after code

%% Generic item entry with gray border in between. Other specific items call this one with
%% additional stuff but this one is fine to usse on it's own if need be
%%
%% Args:
%%      #1: date range or other title
%%      #2: content
%%
\newcommand{\genericitem}[2]{%
    \begin{tabular}{@{}>{\color{darkgray}\vspace{-0.8em}\raggedleft}p{0.14\textwidth}|p{0.84\textwidth}@{}}
        #1 & #2 \\
    \end{tabular}
    \vspace{0.75em}
}

%% This one is for jobs with a summary paragraph instead of bullet points. It just spaces the
%% paragraph for you.
%%
%% Args:
%%      #1: date range string
%%      #2: job title
%%      #3: company
%%      #4: summary blurb
%%
\newcommand{\jobsummaryitem}[4]{%
    \genericitem{#1}{%
        {#2} \newline
        {#3}
        \vspace{0.4em} % leave this spacing alone, it works and shut up

        {#4}
    }
}

%% This one is just a hacky way of dealing with the weirdly-spaced ones. Adds a negative vspace
%%
%% Args:
%%      #1: date range or other title
%%      #2: content
%%
\newcommand{\nospaceitem}[2]{\genericitem{#1}{#2}\vspace{-1em}}
\newcommand{\halfspaceitem}[2]{\genericitem{#1}{#2}\vspace{-0.5em}}

%% For a reference or contact
%%
%% Args:
%%      #1: relation
%%      #2: name
%%      #3: affiliation
%%      #4: contact (e.g. email address)
%%
\newcommand{\referenceitem}[4]{\genericitem{#1}{{#2}\newline{#3}\newline{#4}}}

%% Fancy-pants for ongoing things, i.e. "March - present"
\newcommand{\present}{\emph{present}}

%% Fancy-pants formatting for contact info
\newcommand{\emailaddr}[1]{\Email~\texttt{#1}}
\newcommand{\phonenumber}[1]{\Telefon~{#1}}


