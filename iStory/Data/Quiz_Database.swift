//
//  Quiz_Database.swift
//  iStory
//
//  Created by Boulanger Tim on 06/11/2020.
//

import SwiftUI

let quiz1 = Quiz(
    title: "1er quiz",
    questions: [
        Question(numID: 0, title: "En plus d'une grande variété de produits, Samsung produit...", answers: [
            Answer(numID: 1, title: "Des biscuits", isRight: false),
            Answer(numID: 2, title: "Des balais d'essuie-glace", isRight: false),
            Answer(numID: 3, title: "De l'armement", isRight: true),
            Answer(numID: 4, title: "De la lingerie", isRight: false)
        ]),
        Question(numID: 1, title: "Quel est l'animal officiel de l'Écosse ?", answers: [
            Answer(numID: 1, title: "Le singe", isRight: false),
            Answer(numID: 2, title: "Un démon", isRight: true),
            Answer(numID: 3, title: "Le wapiti", isRight: false),
            Answer(numID: 4, title: "La licorne", isRight: true)
        ]),
        Question(numID: 2, title: "Quand a été interdit l'utilisation de la guillotine en France ?", answers: [
            Answer(numID: 1, title: "1864", isRight: false),
            Answer(numID: 2, title: "1902", isRight: false),
            Answer(numID: 3, title: "1943", isRight: false),
            Answer(numID: 4, title: "1981", isRight: true)
        ]),
        Question(numID: 3, title: "Quel est le premier pays à mettre en place la démocratie ?", answers: [
            Answer(numID: 1, title: "La Grèce", isRight: true),
            Answer(numID: 2, title: "L'Égypte", isRight: false),
            Answer(numID: 3, title: "Les États-Unis", isRight: false),
            Answer(numID: 4, title: "L'Argentine", isRight: false)
        ]),
        Question(numID: 4, title: "Quelle ville habite le plus de milliardaires au monde ?", answers: [
            Answer(numID: 1, title: "New York", isRight: false),
            Answer(numID: 2, title: "Moscou", isRight: true),
            Answer(numID: 3, title: "Londres", isRight: false),
            Answer(numID: 4, title: "Singapour", isRight: false)
        ]),
        Question(numID: 5, title: "Quel est le plus grand pays producteur de pétrole ?", answers: [
            Answer(numID: 1, title: "Russie", isRight: false),
            Answer(numID: 2, title: "États-Unis", isRight: false),
            Answer(numID: 3, title: "Arabie Saoudite", isRight: true),
            Answer(numID: 4, title: "Venezuela", isRight: false)
        ])
    ]
)
