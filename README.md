# The `paris-saclay-thesis-flat` Typst package

An unofficial, flat-design Typst template for Paris-Saclay University theses

<p align="center">
<img src="thumbnails/p1.png" alt="page 1 of an example thesis based on this template" width="49%">
<img src="thumbnails/p2.png" alt="page 2 of an example thesis based on this template" width="49%">
</p>

<details>
<summary>About the name</summary>

- `typst-paris-saclay-thesis-flat` is the name of the GitHub repo, `paris-saclay-thesis-flat` is the name of the Typst template
- The Typst template name does not contain `typst`, because it is redundant[^typst_template_naming]
- The Typst template name is not just `paris-saclay-thesis`, because it is not an official template[^typst_template_naming]. I got rid of the white gradients in the vertical banner, so here is a flat-design version (was accepted by the university library for my thesis).

[^typst_template_naming]: https://github.com/typst/packages?tab=readme-ov-file#submission-guidelines

</details>

## Template adaptation checklist

- [x] Fill out `README.md`
  - Change the `my-package` package name, including code snippets
  - Check section contents and/or delete sections that don't apply
- [x] Check and/or replace `LICENSE` by something that suits your needs
- [x] Fill out `typst.toml`
  - See also the [typst/packages README](https://github.com/typst/packages/?tab=readme-ov-file#package-format)
- [ ] Adapt Repository URLs in `CHANGELOG.md`
  - Consider only committing that file with your first release, or removing the "Initial Release" part in the beginning
- [ ] Adapt or deactivate the release workflow in `.github/workflows/release.yml`
  - to deactivate it, delete that file or remove/comment out lines 2-4 (`on:` and following)
  - to use the workflow
    - [ ] check the values under `env:`, particularly `REGISTRY_REPO`
    - [ ] if you don't have one, [create a fine-grained personal access token](https://github.com/settings/tokens?type=beta) with [only Contents permission](https://stackoverflow.com/a/75116350/371191) for the `REGISTRY_REPO`
    - [ ] on this repo, create a secret `REGISTRY_TOKEN` (at `https://github.com/[user]/[repo]/settings/secrets/actions`) that contains the so created token

    if configured correctly, whenever you create a tag `v...`, your package will be pushed onto a branch on the `REGISTRY_REPO`, from which you can then create a pull request against [typst/packages](https://github.com/typst/packages/)
- [x] remove/replace the example test case
- [x] (add your actual code)
- [ ] remove this section from the README

## Usage

<!-- from https://github.com/typst/templates/tree/main/charged-ieee -->

You can use this template in the [Typst web app](https://typst.app/) by clicking "Start from template" on the dashboard and searching for `paris-saclay-thesis-flat`.

Alternatively, you can use the CLI to kick this project off using the command:
```bash
typst init @preview/paris-saclay-thesis-flat
```

Typst will create a new directory with all the files needed to get you started.

## Configuration

This template exports the `paris-saclay-thesis` function with the following named arguments:
- `candidate-name`: Name of the PhD candidate [type: content]
- `title-fr`: Thesis title in French [content]
- `title-en`: Translated thesis title, in English [content]
- `keywords-fr`: Keywords of the thesis subject, in French [strings array]
- `keywords-en`: Translated keywords of the thesis subject, in English [strings array]
- `abstract-fr`: Abstract of the thesis, in French [content]
- `abstract-en`: Translated abstract of the thesis, in English [content]
- `NNT`: National thesis number [content]
- `doctoral-school`: Line mentioning the doctoral school [content]
- `doctoral-school-code`: Short code of the doctoral school (usually the acronym) to fetch the right logo [string]
- `specialty`: Line mentioning the specialty [content]
- `graduate-school`: Line mentioning the graduate school [content]
- `university-component`: Line mentioning the university component ("référent") [content]
- `research-unit-and-advisors`: Paragraph mentioning the research unit and the PhD advisors [content]
- `defense-date`: Date of the PhD defense [content]
- `thesis-examiners`: List of thesis examiners [array of dictionaries, each with a `name`, `title` and `status` field, of type content]

Some spacings are adjustable, see [`src/lib.typ`](src/lib.typ) for the complete list of arguments.

The template will initialize your package with a sample call to the `paris-saclay-thesis` function in a show rule. If you want to change an existing project to use this template, you can add a show rule like this at the top of your file:

```typst
#import "@preview/paris-saclay-thesis-flat:X.X.X": paris-saclay-thesis // replace with the latest published version

#show: paris-saclay-thesis.with(
  candidate-name: [Frodon Sacquet],
  title-fr: [Propriétés et conséquences psychiques, magiques et géopoliques du métal Au lorsque forgé en Anneau Unique],
  title-en: [Properties and psychic, magical and geopolitical consequences of Au metal when forged into the One Ring],
  keywords-fr: ("Or", "montagne du Destin", "Magie occulte"),
  keywords-en: ("Gold","Mount Doom", "Occult magic"),
  abstract-fr: lorem(200),
  abstract-en: lorem(200),
  NNT: [1955UPASX000],
  doctoral-school: [École doctorale n°573 : INTERFACES - approches interdisciplinaires,\ fondements, applications et innovation],
  doctoral-school-code: "INTERFACES",
  specialty: [Spécialité de doctorat : Sciences des matériaux],
  graduate-school: [Graduate School : Physique],
  university-component: [Référent : Faculté des sciences d'Orsay],
  research-unit-and-advisors: [
    Thèse préparée dans l'unité de recherche *Fondcombe*,\ sous la direction d'*Elrond*, seigneur de Fondcombe,\ 
    et l'encadrement de *Gandalf*, magicien de l'ordre des Istari.
  ],
  defense-date: [20 octobre 1955],
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

// Your content goes below.
```

## Ressources

- [Official MS Word & LaTeX templates](https://www.universite-paris-saclay.fr/recherche/doctorat-et-hdr/le-guide-de-la-soutenance-de-doctorat#Ressources) from the Paris-Saclay University

# License

[MIT-0](./LICENSE)