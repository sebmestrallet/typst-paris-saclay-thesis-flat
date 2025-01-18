#set page("a4")

#set text(
  font: ("Segoe UI This"), // for tinymist to detect local fonts: set `["${workspaceFolder}/src/font"]` for `tinymist.fontPaths` in VS Code settings
  size: 12pt
)

#let prune = rgb(99, 0, 60)

#set page(
  margin: (
    left: 0pt,
    top: 0pt,
    bottom: 0pt,
    right: 2.5cm
  )
)

#let rectangle_width = 16.4%*21cm // 16.4% of the page width

#grid(
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
            NNT~:~XXXXXXXXXX
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
        Titre de la thèse (sur plusieurs lignes si nécessaire)
      ]\
      #v(2pt)
      // Segoe UI 12pt italic
      #text(
        size: 12pt,
        fill: black,
        style: "italic"
      )[
        Traduction du titre de la thèse (sur plusieurs lignes si\ nécessaire)
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
        École doctorale n°XXX : #box(width: 20em, repeat("_"))\
        Spécialité de doctorat : #box(width: 20em, repeat("_"))\
        Graduate School : #box(width: 20em, repeat("_"))\ 
        Référent : #box(width: 20em, repeat("_"))
        #v(10pt)
        Thèse préparée dans l'unité de recherche *Nom de l'unité de recherche*,\ sous la direction de *Prénom Nom*, titre du directeur de thèse,\ 
        et l'encadrement de *Prénom Nom*, titre du co-endadrant.
      ]

      #v(40pt)

      // Segoe UI 12pt black bold
      #text(
        size: 10pt,
      )[
        *Thèse soutenue à Paris-Saclay, le \_\_/\_\_/\_\_\_\_, par* \
      ]

      // Segoe UI 20pt prune bold
      #text(
        size: 20pt,
        fill: prune,
        weight: 600,
      )[
        Prénom Nom
      ]
    ]

    #v(80pt)

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
          [*Prénom Nom*], grid.cell(rowspan: 2)[Président(e)],
          text(size: 9pt)[Titre, affiliation],
          [],[],
          [*Prénom Nom*], grid.cell(rowspan: 2)[Rapporteur & Examinateur/trice],
          text(size: 9pt)[Titre, affiliation],
          [],[],
          [*Prénom Nom*], grid.cell(rowspan: 2)[Rapporteur & Examinateur/trice],
          text(size: 9pt)[Titre, affiliation],
          [],[],
          [*Prénom Nom*], grid.cell(rowspan: 2)[Examinateur/trice],
          text(size: 9pt)[Titre, affiliation],
        )
      ],
    )
  ]
) // end grid

// from the second page, default margins of the A4 paper size
#set page(
  margin: auto
)

#pagebreak()

#image("img/STIC.png", width: 60%)

#v(10pt)

#grid(
  columns: (100%),
  rows: 2,
  gutter: 40pt,
  inset: 10pt,
  stroke: 1pt+prune,
  [
    #set text(10pt)
    *Titre :* Titre de la thèse\
    *Mots-clés :* Mot-clé 1, Mot-clé 2, Mot-clés 3\
    #v(5pt)
    *Résumé :* #lorem(200)
  ],
  [
    #set text(10pt)
    *Title :* Traduction du titre de la thèse\
    *Mots-clés :* Keyword 1, Keyword 2, Keyword 3\
    #v(5pt)
    *Abstract :* #lorem(200)
  ]
)

#pagebreak(weak: true)