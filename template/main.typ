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
//    parameters to edit the first two pages
/////////////////////////////////////////// 

#show: paris-saclay-thesis.with(
  candidate-name: [Frodon Sacquet],
  title-fr: [Propriétés et conséquences psychiques, magiques et géopoliques du métal Au lorsque forgé en Anneau Unique],
  title-en: [Properties and psychic, magical and geopolitical consequences\ of Au metal when forged into the One Ring],
  NNT: [1955UPASX000],
  doctoral-school: [École doctorale n°573 : INTERFACES - approches interdisciplinaires,\ fondements, applications et innovation],
  specialty: [Spécialité de doctorat : Sciences des matériaux],
  graduate-school: [Graduate School : Physique],
  university-component: [Référent : Faculté des sciences d'Orsay],
  research-unit-and-advisors: [
    Thèse préparée dans l'unité de recherche *Fondcombe*,\ sous la direction de *Elrond*, seigneur de Fondcombe,\ 
    et l'encadrement de *Gandalf*, magicien de l'ordre des Istari.
  ],
  defense-date: [20/10/1955]
)

#lorem(200)