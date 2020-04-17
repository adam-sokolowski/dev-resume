
# Resume/CV template 
Minimalistic resume with sidebar. 
Dependencies: fontAwesome 5. Ready for online and offline complilation

# Options 
> ``` \documentclass[color=RoyalBlue]{devResume} ```

| Available:                      |                                 |                                |                                 |
|---------------------------------|---------------------------------|--------------------------------|---------------------------------|
| #FBB982 - Apricot        | #00B5BE - Aquamarine     | #C04F17 - Bittersweet   | #221E1F - Black          |
| #2D2F92 - Blue           | #00B3B8 - BlueGreen      | #473992 - BlueViolet    | #B6321C - BrickRed       |
| #792500 - Brown          | #F7921D - BurntOrange    | #74729A - CadetBlue     | #F282B4 - CarnationPink  |
| #00A2E3 - Cerulean       | #41B0E4 - CornflowerBlue | #00AEEF - Cyan          | #FDBC42 - Dandelion      |
| #A4538A - DarkOrchid     | #00A99D - Emerald        | #009B55 - ForestGreen   | #8C368C - Fuchsia        |
| #FFDF42 - Goldenrod      | #949698 - Gray           | #00A64F - Green         | #DFE674 - GreenYellow    |
| #00A99A - JungleGreen    | #F49EC4 - Lavender       | #8DC73E - LimeGreen     | #EC008C - Magenta        |
| #A9341F - Mahogany       | #AF3235 - Maroon         | #F89E7B - Melon         | #006795 - MidnightBlue   |
| #A93C93 - Mulberry       | #006EB8 - NavyBlue       | #3C8031 - OliveGreen    | #F58137 - Orange         |
| #ED135A - OrangeRed      | #AF72B0 - Orchid         | #F7965A - Peach         | #7977B8 - Periwinkle     |
| #008B72 - PineGreen      | #92268F - Plum           | #00B0F0 - ProcessBlue   | #99479B - Purple         |
| #974006 - RawSienna      | #ED1B23 - Red            | #F26035 - RedOrange     | #A1246B - RedViolet      |
| #EF559F - Rhodamine      | #0071BC - RoyalBlue      | #613F99 - RoyalPurple   | #ED017D - RubineRed      |
| #F69289 - Salmon         | #3FBC9D - SeaGreen       | #671800 - Sepia         | #46C5DD - SkyBlue        |
| #C6DC67 - SpringGreen    | #DA9D76 - Tan            | #00AEB3 - TealBlue      | #D883B7 - Thistle        |
| #00B4CE - Turquoise      | #58429B - Violet         | #EF58A0 - VioletRed     | #000 - White             |
| #EE2967 - WildStrawberry | #FFF200 - Yellow         | #98CC70 - YellowGreen   | #FAA21A - YellowOrange   |

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