\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{techResume}[2020/04/01 Software developer resume - Adam Sokolowski]

% Base class
\LoadClass{article}

% Margins setup
\RequirePackage[left=1cm,right=1cm,top=1cm,bottom=1cm]{geometry}
% Required to perform numbers comparison
\RequirePackage{etoolbox}
% Icons and decorations for the template
\RequirePackage{fontawesome5}[fixed]

% Disable page numbers
\pagestyle{empty}

% Encoding and font style
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[default]{lato}

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
    labelsep=0.5ex,
    nosep,
    itemsep=0.125\baselineskip,
    after=\vskip0.125\baselineskip
}

% Emphasis color
\colorlet{accent}{RoyalBlue}
\colorlet{body}{Black!75}
\colorlet{emphasis}{Black}

\colorlet{ACCENT}{accent}
\newcommand{\emphasis}[1]{\textcolor{accent}{#1}}

\AtBeginDocument{\color{body}}

% Header helper commands
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\info}[1]{\def\@info{#1}}

\newcommand{\icon}[2]{
    \mbox{
        \hspace{-0.25em}\textcolor{accent}{#1}\hspace{.5em}#2\hspace{.75em}
    }
}

\newcommand{\birthday}[1]{\icon{\faBirthdayCake}{#1}}
\newcommand{\email}[1]{\icon{\faAt}{#1}}
\newcommand{\phone}[1]{\icon{\faMobilePhone}{#1}}
\newcommand{\linkedin}[1]{\icon{\faLinkedin}{\href{https://www.linkedin.com/in/#1}{#1}}}
\newcommand{\github}[1]{\icon{\faGithubSquare}{\href{https://github.com/#1}{#1}}}
\newcommand{\location}[1]{\icon{\faMapMarker*}{#1}}

% Timeline component
\newcommand{\timeline}{
 \color{body!20}\makebox[0.015\linewidth][l]{\faDotCircle}%
    \hskip-1.5pt\vrule width 2pt
}

% Resume header
\newcommand{\cvHeader}{%
    \color{black}\Large\textbf{\MakeUppercase{\@name}}\par
    \medskip
    \small\@info\par
}

% Section title
\newcommand{\cvSection}[1]{
  \bigskip
    {\bfseries\MakeUppercase{#1}}\\[-1ex]%
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
    \vspace{0.5px}
}

% Skill dots
\newcommand{\cvSkill}[2]{
    \textcolor{body}{#1}\hfill
    \foreach \x in {1,...,5}{
        \space{\ifnumgreater{\x}{#2}{\color{body!25}}{\color{accent}} \faCircle }
    }\par%
}

% Education step
\newcommand{\cvEducation}[3]{
    {\textbf{\color{black}#1}\par}
    {\color{accent}#2\par}
    \faCalendar*[regular] \hspace{0.25em} #3\par
}

% Circular progress arc
\newcommand{\progressArc}[3]{
    \small{
        \raisebox{-2cm}{
            \makebox[0.4\linewidth][c]{
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
    \timeline%
    \vspace{-0.05cm}
    \hspace{0.125cm}
    \begin{minipage}[t]{.95\linewidth}
        \vspace{-0.25cm}
        \small{%
        \color{accent}%
            {\textbf{\color{emphasis}#1}\par}
            {
              \makebox[0.5\linewidth][l]{%
                \textbf{\color{accent}#2}
                    \color{body!60} (#3)
                }
                \makebox[0.5\linewidth][r]{\color{body}\faCalendar*[regular] \hspace{0.125cm}#4}
            }
        }
        \vspace{-0.25cm}
        \begin{itemize}
            \color{body}#5
        \end{itemize}
        \medskip
    \end{minipage}

}

% Hobbies
\newcommand{\cvHobby}[2]{%
    {
      \makebox[0.45\linewidth][l]{\color{accent}{#2} \hspace{0.25em}\color{body}#1}
    }
}

\newcommand{\cvContent}[1]{
    \hspace{.0125\linewidth}\begin{minipage}[t]{.6250\linewidth}#1\end{minipage}
}%

\newcommand{\cvSidebar}[1]{
    \hspace{.0125\linewidth}\begin{minipage}[t]{.325\linewidth}#1\end{minipage}
}%
