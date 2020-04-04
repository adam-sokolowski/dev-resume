\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{techResume}[2020/04/01 Software developer resume - Adam Sokolowski]

% Base class
\LoadClass{article}

% Margins setup
\RequirePackage[left=1cm,right=1cm,top=1cm,bottom=1cm]{geometry}
% Required to perform numbers comparison
\RequirePackage{etoolbox}
% Icons and decorations for the template

% Disable page numbers
\pagestyle{empty}

% Encoding and font style
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[default]{lato}

% FontAwesome icons with fixed width
\usepackage[fixed]{fontawesome5}

% Package for clickable links
\usepackage{hyperref}

% Cancel new paragraph's indentation
\usepackage{parskip}

% Allows custom color definitions
\usepackage[dvipsnames]{xcolor}

% Package for drawing nodes
\usepackage{tikz}

% Alternative list style - package and settings
\usepackage{enumitem}
\setlist{
    leftmargin=*,
    labelsep=.5ex,
    nosep,
    itemsep=.125\baselineskip,
    after=\vskip.125\baselineskip
}

% Emphasis color
\colorlet{accent}{RoyalBlue}
\colorlet{body}{Black!75}
\colorlet{emphasis}{Black}

\colorlet{ACCENT}{accent}
\newcommand{\emphasis}[1]{\textcolor{accent}{#1}}

\AtBeginDocument{\color{body}}
\AtBeginDocument{\small}

% Header helper commands
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\info}[1]{\def\@info{#1}}

\newcommand{\icon}[2]{
    \mbox{
        \hspace{-.5em}\textcolor{accent}{#1}#2
    }
}

\newcommand{\birthday}[1]{\icon{\faBirthdayCake}{#1}}
\newcommand{\email}[1]{\icon{\faAt}{#1}}
\newcommand{\phone}[1]{\icon{\faMobile*}{#1}}
\newcommand{\linkedin}[1]{\icon{\faLinkedin}{\href{https://www.linkedin.com/in/#1}{#1}}}
\newcommand{\github}[1]{\icon{\faGithubSquare}{\href{https://github.com/#1}{#1}}}
\newcommand{\location}[1]{\icon{\faMapMarker*}{#1}}

% Timeline component
\newcommand{\timeline}{
 {\color{body!20}\makebox[5pt][l]{\faCircle}%
    \hskip .75pt\vrule width 2pt}
}

% Resume header
\newcommand{\cvHeader}{%
    {
        \color{accent}\LARGE\textbf{\MakeUppercase{\@name}}\par
        \medskip
        {\color{black!90}\small\@info\par}
    }
}

% Section title
\newcommand{\cvSection}[1]{
  \bigskip
    {\color{black}\bfseries\MakeUppercase{#1}}\\[-1ex]%
    {\color{accent}\rule{\linewidth}{2pt}\par}
  \smallskip
}

% Skills Tags with percentage saturation
\newcommand{\cvTag}[2]{
  \def\saturation{#2}%
  \tikz
    \node[
        color=white,
        fill=accent!\saturation,
        rounded corners = 1.5ex,
        inner xsep = .75ex,
        inner ysep = .75ex,
        text height = 1.5ex,
        text depth = .25ex,
        below = .5ex
    ]{#1};
    \vspace{.5px}
}

% Skill dots
\newcommand{\cvSkill}[2]{
    \textcolor{body}{#1}\hfill
    \foreach \x in {1,...,5}{
        \space{\ifnumgreater{\x}{#2}{\color{body!25}}{\color{accent}}\hspace{-.5em}\faCircle }
    }\par%
}

% Education step
\newcommand{\cvEducation}[3]{
    {\textbf{\color{black}#1}\par}
    {\color{accent}#2\par}
    \hspace{-.5em} \faCalendar*[regular] #3\par
}

% Circular progress arc
\newcommand{\progressArc}[3]{
    \small{
        \raisebox{-2cm}{
            \makebox[.4\linewidth][c]{
                \begin{tikzpicture}
                    \draw [line width=.125cm,body!20] (0,.75cm) arc[start angle=90,radius=.75cm,delta angle=-360];
                    \draw [line width=.125cm,accent] (0,.75cm) arc[start angle=90,radius=.75cm,delta angle=-3.60*#3];
                    \node[align=center] at (0,0) {\bf #1};
                    \node[below=.85cm,align=center] at (0,0) {#2};
                \end{tikzpicture}%
            }
        }
    }
}

% Career position
\newcommand{\cvPosition}[5]{%
    \hspace{-.25cm}
    \timeline%
    \vspace{-.05cm}
    \hspace{.125cm}
    \begin{minipage}[t]{.95\linewidth}
        \vspace{-.25cm}
        \color{accent}%
            {\textbf{\color{emphasis}#1}\par}
            {
              \makebox[.5\linewidth][l]{%
                \textbf{\color{accent}#2}
                    \color{body!60} \faMapMarker*#3
                }
                \makebox[.5\linewidth][r]{\color{body}\faCalendar*[regular]#4}
            }
        \vspace{-.25cm}
        \begin{itemize}
            \color{body}#5
        \end{itemize}
        \vspace{.25cm}
        \medskip
    \end{minipage}
}

% Hobbies
\newcommand{\cvHobby}[2]{%
    {\hspace{-.25em}\color{accent}{#2} \color{body} #1\vspace{0.25em}\par}
}

\newcommand{\cvContent}[1]{
    \hspace{.0125\linewidth}\begin{minipage}[t]{.625\linewidth}#1\end{minipage}
}%

\newcommand{\cvSidebar}[1]{
    \hspace{.0125\linewidth}\begin{minipage}[t]{.325\linewidth}#1\end{minipage}
}%
