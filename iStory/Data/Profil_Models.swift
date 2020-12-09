//
//  Profil_Models.swift
//  iStory
//
//  Created by Boulanger Tim on 03/11/2020.
//

import SwiftUI

struct Profil {
    var userImage : String // Image Profil
    var userName : String // Pseudo Profil
    var quizScore : Int // Score Max du Quiz
    var vfScore : Int // Score Max du Vrai/Faux
    var nbFactView : Int // Nombres de Fait Historique Vu
    var nbFunnyView : Int // Nombres de Fait Insolite Vu
    var success : [String : Bool] // Tableau de succès
}
