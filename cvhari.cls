\ProvidesClass{cvhari}
\LoadClass{article}

\RequirePackage[margin=2cm]{geometry}
\usepackage{microtype}

\RequirePackage{xcolor}

\definecolor{Black}{HTML}{000000}
\definecolor{HeaderBg}{HTML}{6A1122}
\definecolor{Accent}{HTML}{AF1D37}

\colorlet{accent}{Accent} %Black!90 for print
\colorlet{body}{Black!80}

\RequirePackage{fontawesome}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\devsymbol}{\faCode}

\newcommand{\printinfo}[2]{\mbox{\textcolor{white}{#1}\hspace{0.5em}#2\hspace{2em}}}

\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\headerlocation}[1]{\def\@headerlocation{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}


\newcommand{\headercards}[1]{\def\@headercards{#1}}

\newcommand{\makecvheader}{%
  \begin{tikzpicture}[remember picture, overlay]
    \fill[HeaderBg] (current page.north west) rectangle ([yshift=-6.2cm]current page.north east);
  \end{tikzpicture}%
  \begingroup \center
    \vspace{-0.5cm}
    {\Large\bfseries\color{white}\textls[100]{\MakeUppercase{\@name}}\par}
    \smallskip
    {\normalsize\bfseries\color{white}\textls[150]{\MakeUppercase{\@tagline}}\par}
    \smallskip
    {\small\color{white}\faMapMarker\hspace{0.5em}\color{white}\@headerlocation\par}
    \smallskip
    {\center\footnotesize\bfseries\color{white}\@personalinfo\par}
    \smallskip
    {\center\@headercards\par}
  \endgroup\medskip
}


\RequirePackage{dashrule}

%% Blue (or accent coloured) divider is company separator
\setlength{\parindent}{0pt}
\newcommand{\divider}{\medskip\textcolor{accent}{\hdashrule{\linewidth}{0.8pt}{0.5ex}}\bigskip}


%% Gray divider is project separator
\setlength{\parindent}{0pt}
\newcommand{\dividergray}{\textcolor{body!50}{\hdashrule{\linewidth}{0.4pt}{0.5ex}}\smallskip}


\newcommand{\cvsection}[1]{%
  \bigskip%
  {\color{accent}\small\bfseries\textls[100]{\MakeUppercase{#1}}}\\[-1ex]%
  {\color{accent}\rule{\linewidth}{1.2pt}\par}\medskip
}

% textendash, textbullet
\newcommand{\itemmarker}{\color{accent}\small\textbullet}
\newcommand{\dashedbullets}{\color{accent}\small\textendash}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.8em,nosep,itemsep=0.15\baselineskip,after=\vskip0.15\baselineskip,before=\vskip0.15\baselineskip}
\setlist[itemize]{label=\itemmarker}


\newcommand{\company}[5]{%
\smallskip
    {\small\color{body}\textls[50]{\textbf{\MakeUppercase{#1}}}}       \hfill
    {\small\color{body}\textls[50]{\textbf{\MakeUppercase{#2}}}}       \par

    \smallskip{\small\color{body}\textit{#5}}\medskip\hfill
    { \color{accent} \faCalendar}  \hspace{0.5em}{\color{body}{#4}}   \par
    { \color{accent} \faMapMarker} \hspace{0.5em}{\color{body}{#3}}   \par
    \smallskip
    \smallskip
}

\RequirePackage{tikz}
\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=accent,rounded corners,inner xsep=0.75ex,inner ysep =0.75ex,text height=1.2ex,text depth=.2ex,fill=accent]{\bfseries\scriptsize\textcolor{white}{#1}};
}

\newcommand{\headercardwide}[2]{%
  \begin{tikzpicture}
    \node[draw=white,fill=white,rounded corners=5pt,inner xsep=1.5ex,inner ysep=1.4ex,text=Black,text width=0.45\textwidth,align=left] {
      {\linespread{0.2}\selectfont\bfseries\scriptsize\MakeUppercase{#1}}\\[0.1em]\smallskip
      \parbox{\linewidth}{\scriptsize\renewcommand{\baselinestretch}{1}\selectfont #2}
    };
  \end{tikzpicture}%
}

\newcommand{\headercardsplit}[4]{%
  \begin{tikzpicture}
    \node[draw=white,fill=white,rounded corners=5pt,inner xsep=1.3ex,inner ysep=0.8ex,text=Black,text width=0.45\textwidth,minimum height=6.3em] {
      \begin{tabular}{@{}p{0.25\textwidth}@{\hspace{0.3em}}|@{\hspace{1em}}p{0.70\textwidth}@{}}
        {\linespread{0.9}\selectfont\bfseries\scriptsize\MakeUppercase{#1}} & \parbox{\linewidth}{\scriptsize\renewcommand{\baselinestretch}{1}\selectfont #2}\medskip\medskip \\[0.2em]
        {\linespread{0.9}\selectfont\bfseries\scriptsize\MakeUppercase{#3}} & \parbox{\linewidth}{\scriptsize\renewcommand{\baselinestretch}{1}\selectfont #4}
      \end{tabular}
    };
  \end{tikzpicture}%
}

\NewDocumentCommand{\splitoncomma}{ >{\SplitList{,}} m }{%
  \ProcessList{#1}{\func}%
}

\NewDocumentCommand{\func}{m}{%
  \cvtag{#1} % a space follows
}


\newcommand{\technologies}[1]{%
    \smallskip
    \splitoncomma{#1}
    \par\smallskip
}

\newcommand{\education}[3]{%
\smallskip
    {\small\color{body}\textls[50]{\textbf{\MakeUppercase{#1}}}}  \\
    {\small\textls[50]{{{#2}}}}  %\par\smallskip 
    \hfill{ \color{accent} \faCalendar}  \hspace{0.5em}{{#3}}   \par
}


\RequirePackage{multirow,tabularx}
\newcommand{\cvachievement}[3]{%
  \begin{tabularx}{\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
  \multirow{2}{*}{\Large\color{accent}#1} & {#2}\\
  & #3
  \end{tabularx}%
  \smallskip
}

\pdfinfo{ /Author (Cody Pero) /Title (Resume) /Keywords (Ruby; Ruby on Rails; Java; Typescript; Javascript; Maven; React; SQL; PostgreSQL;) /Subject (Resume for Cody Pero)  /Producer(Cody Pero) /Creator(Cody Pero)}

\newcommand{\skills}[1]{%
\smallskip
    {\small\color{body}\textls[50]{{\MakeUppercase{#1}}}}  \\
    \smallskip
}


\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}