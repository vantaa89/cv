\ProvidesClass{cv}

\LoadClass[10pt, A4]{article} % Font size and paper type

\usepackage[left=2cm, top=1.5cm, right=2cm, bottom=1.5cm]{geometry}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array}
\usepackage{fontspec}
\usepackage{xcolor}
\usepackage{tabularx}
\usepackage{enumitem}
\usepackage{comment}
\usepackage{ifthen}
\usepackage{fancyhdr}
\usepackage{kotex}[hangul]

\usepackage{makecell}
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}

\definecolor{darkgray}{HTML}{333333}



\def \setname#1 {\def\name{#1}}
\def \setaltname#1 {\def\altname{#1}}
\def \setphone#1 {\def\phone{#1}}
\def \setmail#1 {\def\mail{#1}}
\def \name {} % name is empty unless it is defined
\def \altname {}
\def \mail {}
\def \phone {}

\newcounter{pubcnt}
\setcounter{pubcnt}{0}


% cvheader

\newcommand*{\cvheader}[0]{
    \begin{center}
        {\huge \textbf{\name} \ifthenelse{\equal{\altname}{}}{}{(\altname)}  \vspace{0mm}}
        
        {\href{mailto:\mail}{\texttt{\mail}} \ifthenelse{\equal{\phone}{}}{}{\hspace{2mm} $\cdot$ \hspace{2mm} \phone}}
    \end{center}
    \vspace{5mm}
}


% cvsection
\newcommand*{\cvsection}[1]{
    %\vspace{2mm}
    {\large{\textsc{#1}}
    \vspace{1.5mm}
    \hrule
    \vspace{0.5mm}
    }
}


% cventry
\newcommand*{\cventry}[5]{
    \begin{tabular*}{\textwidth}[h]{@{\extracolsep{\fill}} l r}
        {\textbf{#1}}     &     {\color{darkgray}\small #2} \\
        {\textit{#3}}           & {\color{darkgray}\small #4}
    \end{tabular*}
    {
    %\renewcommand\labelitemi{}
    \normalsize
    \begin{itemize}[leftmargin=15pt]\setlength\itemsep{-2.5mm}
        \vspace{-1mm}
        #5
    \end{itemize}
    }
}


% cvline
\newcommand*{\cvline}[2]{
    {
    \setlength{\labelsep}{5mm}
    \begin{tabular*}{\textwidth}{ m{3cm} l }
        \hspace{-2mm}\textbf{#1} & #2
    \end{tabular*}
        
    }
    
    \vspace{-2mm}
}

% wide cvline
\newcommand*{\cvlinewide}[2]{
    {
    \setlength{\labelsep}{5mm}
    \begin{tabular*}{\textwidth}{ m{6cm} l }
        \hspace{-2mm}\textbf{#1} & #2
    \end{tabular*}
        
    }
    
    \vspace{-2mm}
}


% cvlargeline
\newcommand*{\cvlargeline}[2]{
    {\large
    \setlength{\labelsep}{5mm}
    \setlength{\tabcolsep}{5mm}
    \begin{tabular*}{\textwidth}{@{} l l }
        {\textsc{#1}} & {\normalsize #2}
    \end{tabular*}
    }
    
    \vspace{-4mm}
}


% cvcourse
\newcommand*{\cvcourse}[2]{
    {
    \setlength{\labelsep}{5mm}
    \noindent
    \begin{tabularx}{\textwidth}{X R{2cm}}
        #1 & \textit{#2}
    \end{tabularx}

    % \begin{tabular*}{\textwidth}{L{\textwidth-2cm} R{2cm} }
    %     \makecell[l]{#1} & \textit{#2}
    % \end{tabular*}
        \vspace{-5pt}
    }
    
    \vspace{0mm}
}

\newcommand*{\cvpublication}[5]{
    \stepcounter{pubcnt}
    [\arabic{pubcnt}] #1, ``#2 ", \textit{#3}, #4, (#5)
}

\newcounter{honornum}
\setcounter{honornum}{0}

\newcommand*{\cvhonor}[2]{
    #1\hfill {\small #2}$\;\;$\\
}