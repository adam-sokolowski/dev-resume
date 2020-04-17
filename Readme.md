
# Resume/CV template 
Minimalistic resume with sidebar. 
Dependencies: fontAwesome 5. Ready for online and offline complilation

# Options 
> ``` \documentclass[color=RoyalBlue]{devResume} ```

| Available:                      |                                 |                                |                                 |
|---------------------------------|---------------------------------|--------------------------------|---------------------------------|
| $\color{#FBB982}Apricot$        | $\color{#00B5BE}Aquamarine$     | $\color{#C04F17}Bittersweet$   | $\color{#221E1F}Black$          |
| $\color{#2D2F92}Blue$           | $\color{#00B3B8}BlueGreen$      | $\color{#473992}BlueViolet$    | $\color{#B6321C}BrickRed$       |
| $\color{#792500}Brown$          | $\color{#F7921D}BurntOrange$    | $\color{#74729A}CadetBlue$     | $\color{#F282B4}CarnationPink$  |
| $\color{#00A2E3}Cerulean$       | $\color{#41B0E4}CornflowerBlue$ | $\color{#00AEEF}Cyan$          | $\color{#FDBC42}Dandelion$      |
| $\color{#A4538A}DarkOrchid$     | $\color{#00A99D}Emerald$        | $\color{#009B55}ForestGreen$   | $\color{#8C368C}Fuchsia$        |
| $\color{#FFDF42}Goldenrod$      | $\color{#949698}Gray$           | $\color{#00A64F}Green$         | $\color{#DFE674}GreenYellow$    |
| $\color{#00A99A}JungleGreen$    | $\color{#F49EC4}Lavender$       | $\color{#8DC73E}LimeGreen$     | $\color{#EC008C}Magenta$        |
| $\color{#A9341F}Mahogany$       | $\color{#AF3235}Maroon$         | $\color{#F89E7B}Melon$         | $\color{#006795}MidnightBlue$   |
| $\color{#A93C93}Mulberry$       | $\color{#006EB8}NavyBlue$       | $\color{#3C8031}OliveGreen$    | $\color{#F58137}Orange$         |
| $\color{#ED135A}OrangeRed$      | $\color{#AF72B0}Orchid$         | $\color{#F7965A}Peach$         | $\color{#7977B8}Periwinkle$     |
| $\color{#008B72}PineGreen$      | $\color{#92268F}Plum$           | $\color{#00B0F0}ProcessBlue$   | $\color{#99479B}Purple$         |
| $\color{#974006}RawSienna$      | $\color{#ED1B23}Red$            | $\color{#F26035}RedOrange$     | $\color{#A1246B}RedViolet$      |
| $\color{#EF559F}Rhodamine$      | $\color{#0071BC}RoyalBlue$      | $\color{#613F99}RoyalPurple$   | $\color{#ED017D}RubineRed$      |
| $\color{#F69289}Salmon$         | $\color{#3FBC9D}SeaGreen$       | $\color{#671800}Sepia$         | $\color{#46C5DD}SkyBlue$        |
| $\color{#C6DC67}SpringGreen$    | $\color{#DA9D76}Tan$            | $\color{#00AEB3}TealBlue$      | $\color{#D883B7}Thistle$        |
| $\color{#00B4CE}Turquoise$      | $\color{#58429B}Violet$         | $\color{#EF58A0}VioletRed$     | $\color{#000}White$          |
| $\color{#EE2967}WildStrawberry$ | $\color{#FFF200}Yellow$         | $\color{#98CC70}YellowGreen$   | $\color{#FAA21A}YellowOrange$   |

# Usage


```tex
\documentclass[color=RoyalBlue]{devResume}

\begin{document}
    \name{Name Surname}
    \info{
        \birthday{00\textsuperscript{st} Jan 1900}
        \phone{+XX XXX XXX XXX}
        \location{City, Country}
        \email{name.surname@domain.com}
        \linkedin{linkedin}
        \github{github}
    }
    \cvContent{...elements...}
    \cvSidebar{...elements...}
\end{document}

```
## Elements
> `cvContent` and `cvSidebar`  - two structural elements with widths ratio approx `2:1`
- `cvHeader`     - CV header with contact details
- `cvSection`    - Section header. Uppercase title with bottom border
- `cvPosition`   - Job position
- `cvTag`        - Rounded corners rectangle with a keyword
- `cvSkill`      - 5 step scale of a given skill
- `progressArc`  - Percentage chart with label
- `cvEducation`  - Education step
- `cvHobby`      - Label with icon representing personal interests