// An highlighted empty rectangle for missing parameters
#let empty-field(width: 10em) = box(
  fill: rgb("#fffd11a1"), // default color of highlight() https://typst.app/docs/reference/text/highlight/#parameters-fill
  width: width,
  height: 1em,
  baseline: 0.2em
)

// The function takes the whole document as `body` parameter
// and formats it for a Paris-Saclay University thesis
#let paris-saclay-thesis(

  // The first and last names of the candidate
  candidate-name: highlight[Prénom Nom],

  // The thesis title in French
  title-fr: highlight[Titre de la thèse],

  // The translated thesis title in English
  title-en: highlight[Title of the thesis],

  // The national thesis number (NNT, Numéro National de Thèse)
  NNT: highlight[XXXXXXXXXX],

  // The line for the doctoral school number and name
  doctoral-school: [École doctorale n°#empty-field(width: 3em) : #empty-field()],

  // The line for the specialty
  specialty: [Spécialité de doctorat : #empty-field()],

  // The line for the graduate school
  graduate-school: [Graduate School : #empty-field()],

  // The line for the university component / associated university (référent)
  university-component: [Référent : #empty-field()],

  // The paragraph for the reseach unit and the PhD advisors
  research-unit-and-advisors: [
    Thèse préparée dans l'unité de recherche #empty-field(),\ sous la direction de #empty-field(), #highlight[titre du directeur de thèse],\ 
    et l'encadrement de #empty-field(), #highlight[titre du co-endadrant].
  ],

  // The date of the PhD defense
  defense-date: [#empty-field(width: 2em)/#empty-field(width: 2em)/#empty-field(width: 4em)],

  // The list of thesis examiners (rapporteurs and defense examiners)
  thesis-examiners: (
    (
      name: empty-field(),
      title: empty-field(width: 25em),
      status: highlight[Président(e)]
    ),
    (
      name: empty-field(),
      title: empty-field(width: 25em),
      status: highlight[Rapporteur &\ Examinateur/trice]
    ),
    (
      name: empty-field(),
      title: empty-field(width: 25em),
      status: highlight[Rapporteur &\ Examinateur/trice]
    ),
    (
      name: empty-field(),
      title: empty-field(width: 25em),
      status: highlight[Examinateur/trice]
    ),
  ),

  // The thesis content
  body

) = {

  set page("a4")

  set text(
    font: ("Segoe UI This"), // for tinymist to detect local fonts: set `["${workspaceFolder}/src/font"]` for `tinymist.fontPaths` in VS Code settings
    size: 12pt
  )

  let prune = rgb(99, 0, 60)

  set page(
    margin: (
      left: 0pt,
      top: 0pt,
      bottom: 0pt,
      right: 2.5cm
    )
  )

  let rectangle_width = 16.4%*21cm // 16.4% of the page width

  grid(
    columns: (rectangle_width, 100%-rectangle_width),
    gutter: 25pt,
    [
      #rect(
        fill: prune,
        width: 100%,// 100% of rectangle_width,
        height: 100%
      )

      #place(
        bottom+left,
        dx: 0.1cm,
        dy: -3cm,
        rotate(
          -90deg,
          block[
            #text(
              fill: white,
              size: 16pt,
            )[
              THESE~DE~DOCTORAT
            ]
            #v(0.5pt)
            #text(
              fill: white,
            )[
              NNT~:~#NNT
            ]
          ]
        )
      )
    ],
    [ // right part of the grid

      #v(15pt)

      #image("img/universite-paris-saclay.png", width: 25.4%*21cm)

      #v(55pt)

      #align(
        right
      )[
        // Segoe UI 20pt prune
        #text(
          size: 20pt,
          fill: prune,
        )[
          #title-fr
        ]\
        #v(2pt)
        // Segoe UI 12pt italic
        #text(
          size: 12pt,
          fill: black,
          style: "italic"
        )[
          #title-en
        ]\

        #v(40pt)

        // Segoe UI 12pt black bold
        #text(
          weight: 400,
        )[
          *Thèse de doctorat de l’université Paris-Saclay*
        ]

        #v(10pt)

        // Segoe UI 10pt black
        #text(
          size: 10pt,
        )[
          #doctoral-school\
          #specialty\
          #graduate-school\ 
          #university-component
          #v(10pt)
          #research-unit-and-advisors
        ]

        #v(40pt)

        // Segoe UI 12pt black bold
        #text(
          size: 10pt,
        )[
          *Thèse soutenue à Paris-Saclay, le #defense-date, par* \
        ]

        // Segoe UI 20pt prune bold
        #text(
          size: 20pt,
          fill: prune,
          weight: 600,
        )[
          #candidate-name
        ]
      ]

      #v(60pt)

      #grid(
        columns: (50pt, auto),
        row-gutter: 1em,
        stroke: (x,y) => if x == 1 and y == 1 { (left: (1pt + prune)) },
        [],
        [
          #text(size: 14pt, fill: prune)[*Composition du jury*]\ // Segoe UI 14pt prune bold
          #text(size: 11pt, fill: prune)[Membres du jury avec voix délibérative] // Segoe UI 11pt prune
        ],
        [],
        [
          // Segoe UI 10pt black, names in bold
          #set text(10pt)
          #grid(
            columns: (250pt, auto),
            inset: (x: 6pt, y: 3pt),
            align: horizon,
            ..for thesis-examiner in thesis-examiners {
              (thesis-examiner.name, grid.cell(rowspan: 2)[#thesis-examiner.status], text(size: 9pt)[#thesis-examiner.title])
              if thesis-examiner != thesis-examiners.last() {
                ([],[])
              }
            }
          )
        ],
      )
    ]
  ) // end grid

  // from the second page, default margins of the A4 paper size
  set page(
    margin: auto
  )

  pagebreak()

  image("img/STIC.png", width: 60%)

  v(10pt)

  grid(
    columns: (100%),
    rows: 2,
    gutter: 40pt,
    inset: 10pt,
    stroke: 1pt+prune,
    [
      #set text(10pt)
      *Titre :* #title-fr\
      *Mots-clés :* Mot-clé 1, Mot-clé 2, Mot-clés 3\
      #v(5pt)
      *Résumé :* #lorem(200)
    ],
    [
      #set text(10pt)
      *Title :* #title-en\
      *Mots-clés :* Keyword 1, Keyword 2, Keyword 3\
      #v(5pt)
      *Abstract :* #lorem(200)
    ]
  )

  pagebreak(weak: true)

  body
}