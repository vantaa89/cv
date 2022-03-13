\ProvidesClass{cv}

\LoadClass[10pt, A4]{article} % Font size and paper type

\usepackage[left=2cm, top=1.5cm, right=2cm, bottom=1.5cm]{geometry}

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array}
\usepackage{fontspec}
\usepackage{xcolor}
\usepackage{enumitem}
\usepackage{kotex}[hangul]

\usepackage[hidelinks]{hyperref} % remove color from links
\usepackage{makecell}


\definecolor{darkgray}{HTML}{333333}



\pagestyle{empty} % Suppress page numbers

\def \setname#1 {\def\name{#1}}
\def \setaltname#1 {\def\altname{#1}}
\def \setphone#1 {\def\phone{#1}}
\def \setmail#1 {\def\mail{#1}}
\def \name {} % name is empty unless it is defined
\def \altname {}
\def \mail {}
\def \phone {}



% cvheader

\newcommand*{\cvheader}[0]{
    \begin{center}
        {\huge \textbf{\name} (\altname)\vspace{0mm}}
        
        {\href{mailto:\mail}{\texttt{\mail}} \hspace{2mm} $\cdot$ \hspace{2mm} \phone}
    \end{center}
    \vspace{5mm}
}


% cvsection
\newcommand*{\cvsection}[1]{
    \vspace{2mm}
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
    \begin{itemize}[leftmargin=15pt]\setlength\itemsep{-2mm}
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
        \textbf{#1} & #2
    \end{tabular*}
        
    }
    
    \vspace{-1mm}
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
    \begin{tabular*}{\textwidth}{ m{1.2cm} l }
        #1 & \makecell[l]{#2}
    \end{tabular*}
        
    }
    
    \vspace{1mm}
}

\newcommand*{\cvpublication}[2]{
    
}