
# Resume/CV template 
Minimalistic resume with sidebar

# Options 
`Color`: one of:

|                |                |                |                |
|----------------|----------------|----------------|----------------|
| Apricot        | Aquamarine     | Bittersweet    | Black          |
| Blue           | BlueGreen      | BlueViolet     | BrickRed       |
| Brown          | BurntOrange    | CadetBlue      | CarnationPink  |
| Cerulean       | CornflowerBlue | Cyan           | Dandelion      |
| DarkOrchid     | Emerald        | ForestGreen    | Fuchsia        |
| Goldenrod      | Gray           | Green          | GreenYellow    |
| JungleGreen    | Lavender       | LimeGreen      | Magenta        |
| Mahogany       | Maroon         | Melon          | MidnightBlue   |
| Mulberry       | NavyBlue       | OliveGreen     | Orange         |
| OrangeRed      | Orchid         | Peach          | Periwinkle     |
| PineGreen      | Plum           | ProcessBlue    | Purple         |
| RawSienna      | Red            | RedOrange      | RedViolet      |
| Rhodamine      | RoyalBlue      | RoyalPurple    | RubineRed      |
| Salmon         | SeaGreen       | Sepia          | SkyBlue        |
| SpringGreen    | Tan            | TealBlue       | Thistle        |
| Turquoise      | Violet         | VioletRed      | White          |
| WildStrawberry | Yellow         | YellowGreen    | YellowOrange   |

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
`\cvContent` and `\cvSidebar` two structural elements with widts ratio approx `2:1`
