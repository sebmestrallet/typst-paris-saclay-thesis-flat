///////////////////////////////////////////
// 1. Replace
//      #import "../src/lib.typ"
//    (local development), with
//      #import "@preview/paris-saclay-thesis-flat:0.1.0"
//    (published package)
/////////////////////////////////////////// 

#import "../src/lib.typ": paris-saclay-thesis

#show: paris-saclay-thesis.with(
  title: "Titre de la thèse"
)

#lorem(200)