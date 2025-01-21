///////////////////////////////////////////
// 1. Replace
//      #import "../src/lib.typ"
//    (local development), with
//      #import "@preview/paris-saclay-thesis-flat:0.1.0"
//    (published package)
/////////////////////////////////////////// 

#import "../src/lib.typ": paris-saclay-thesis

///////////////////////////////////////////
// 2. Change the value of the following
//    parameters to edit the first two pages.
//    All parameters have a defaut value, so
//    you can remove some to highlight which
//    ones are still missing.
/////////////////////////////////////////// 

#show: paris-saclay-thesis.with(
  candidate-name: [Frodon Sacquet],
  title-fr: [Propriétés et conséquences psychiques, magiques et géopoliques du métal Au lorsque forgé en Anneau Unique],
  title-en: [Properties and psychic, magical and geopolitical consequences\ of Au metal when forged into the One Ring],
  keywords-fr: ("Or", "montagne du Destin", "Magie occulte"),
  keywords-en: ("Gold","Mount Doom", "Occult magic"),
  abstract-fr: lorem(200),
  abstract-en: lorem(200),
  NNT: [1955UPASX000],
  doctoral-school: [École doctorale n°573 : INTERFACES - approches interdisciplinaires,\ fondements, applications et innovation],
  doctoral-school-code: "INTERFACES", // for the logo to insert
  specialty: [Spécialité de doctorat : Sciences des matériaux],
  graduate-school: [Graduate School : Physique],
  university-component: [Référent : Faculté des sciences d'Orsay],
  research-unit-and-advisors: [
    Thèse préparée dans l'unité de recherche *Fondcombe*,\ sous la direction d'*Elrond*, seigneur de Fondcombe,\ 
    et l'encadrement de *Gandalf*, magicien de l'ordre des Istari.
  ],
  defense-date: [20/10/1955],
  thesis-examiners: (
    (
      name: [*Aragorn*],
      title: [Roi du Gondor],
      status: [Président]
    ),
    (
      name: [*Legolas*],
      title: [Prince des Elfes Sylvains],
      status: [Rapporteur &\ Examinateur]
    ),
    (
      name: [*Gimli*],
      title: [Guerrier du royaume d'Erebor],
      status: [Rapporteur &\ Examinateur]
    ),
    (
      name: [*Faramir*],
      title: [Intendant du Gondor],
      status: [Examinateur]
    ),
  ),
)

#lorem(200)