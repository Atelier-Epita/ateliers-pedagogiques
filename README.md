🇫🇷
# Ateliers Pédagogiques

Ce dépot a pour but de regrouper les différents sujets d'ateliers ainsi que les potentielles ressources nécessaires.

Les sujets doivent être écrits en LaTeX en suivant le modèle d'exemple. Il est conseillé afin de bien travailler avec Git d'utiliser un éditeur en local possédant un mode de visualisation, comme [TexMaker](https://www.xm1math.net/texmaker/) par exemple.

---
## Contribuer

N'hésitez pas à ouvrir des issues si vous souhaitez proposer des modifications sur un sujet existant.

Veuillez créer une branche nommée explicitement si vous souhaiter ajouter un nouveau sujet.

Les commits de ce dépot doivent suivre au maximum la convention [Angular](https://www.conventionalcommits.org/en/v1.0.0-beta.4/). Succintement, voici les principaux tags à appliquer : ![commit_convention](./static/commit-style.png)

---
### Format
Un template d'exemple est disponible (*/sujets/template/*).
Merci de rédiger votre sujet en suivant ce modèle.

Chaque sujet doit contenir quatre parties distinctes :
- **Résumé**, explication rapide de ce qui est traité dans le sujet, des objectifs et finalités.
- **Avant de commencer**, mention des prérequis pour la réalisation du sujet et présentation éventuelle des logiciels/matériels utilisés.
- **Sujet**, le coeur du document se trouve ici, développement de tout le sujet en veillant à hiérarchiser le contenu (sections, subsections, ...).
- **Annexes**, liens et documents nécéssaires ou utiles à la réalisation du sujet.

---
### Commandes LaTeX personnalisées

Afin de faciliter l'uniformité des sujets, plusieurs commandes sont disponibles dans le fichier */sujets/sujet-tp-ateliers.cls*.
Si vous jugez pertinent d'en ajouter de nouvelles, n'hésitez pas à ouvrir une pull request.

**Utilisez de préférence ces commandes plutôt que de les imiter afin de conserver l'homogénéité des sujets.**

| Commande                     | Description                                                               |
| ---------------------------- | ------------------------------------------------------------------------- |
| `\doclink{lien}{texte}`      | hyperlien avec note de bas de page                                        |
| `\br`                        | saut de ligne                                                             |
| `\mono{texte}`               | texte stylisé en police mono et surligné en gris                          |
| `\illustrate{path}{légende}` | figure centrée (le path est à prendre à partir du dossier `images/`)      |
| `\bonus{texte}`              | encadrement bleu introduisant un exercice optionnel pour les plus avancés |
| `\hint{texte}`               | encadrement jaune menant à apporter un conseil, une précision             |
| `\warning{texte}`            | encadrement rouge menant à avertir, insister sur un point important       |


---
*L'ensemble des sujets et contenus présents ici est sauf mention explicite la pleine propriété de l'association **L'Atelier**. Toute reproduction ou copie même partielle de ces documents doit contenir un lien vers ce dépot.*


---
---

🇬🇧
# Pedagogical Workshops

This repository is intended to gather the different workshop topics as well as the potential resources needed.

The topics must be written in LaTeX following the example template. In order to work well with Git, it is advised to use a local editor with a visualization mode, like [TexMaker](https://www.xm1math.net/texmaker/) for example.

---
## Contribute

Feel free to open issues if you want to propose changes on an existing topic.

Please create an explicitly named branch if you want to add a new topic.

Commits in this repository should follow the [Angular] convention as much as possible (https://www.conventionalcommits.org/en/v1.0.0-beta.4/). Briefly, here are the main tags to apply: ![commit_convention](./static/commit-style.png)

---
### Format
A sample template is available (*/sujets/template/*).
Please write your topic following this template.

Each topic must contain four distinct parts:
- **Résumé (Summary)**, a quick explanation of what the topic is about, objectives and goals.
- **Avant de commencer (Before starting)**, mention of the prerequisites for the realization of the subject and possible presentation of the software/hardware used.
- **Sujet (Subject)**, the heart of the document is here, development of the whole subject, making sure to organize the content (sections, subsections, ...).
- **Annexes (Appendices)**, links and documents necessary or useful for the realization of the subject.

---
### Custom LaTeX commands

In order to facilitate the uniformity of the topics, several commands are available in the file */sujets/sujet-tp-ateliers.cls*.
If you think it is appropriate to add new ones, feel free to open a pull request.

**Use these commands rather than mimicking them to keep the subjects consistent.**

| Command                      | Description                                                         |
| ---------------------------- | ------------------------------------------------------------------- |
| `\doclink{link}{text}`       | hyperlink with footnote                                             |
| `\br`                        | line break                                                          |
| `\mono{text}`                | inline text stylized in mono font and higlighted in gray            |
| `\illustrate{path}{caption}` | centered figure (the path is to be taken from the `images/` folder) |
| `\bonus{text}`               | blue frame introducing an optional exercise for most advanced       |
| `\hint{text}`                | yellow frame leading to a tip, a clarification                      |
| `\warning{text}`             | red frame leading to warning, emphasizing an important point        |


---
*The whole of the subjects and contents present here is except explicit mention the full property of the association **L'Atelier**. Any reproduction or copy, even partial, of these documents must contain a link to this repository.*