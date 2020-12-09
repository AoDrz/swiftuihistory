//
//  Quiz_Models.swift
//  iStory
//
//  Created by Boulanger Tim on 06/11/2020.
//

import SwiftUI

struct Quiz {
    var title: String
    var questions: [Question]
}
struct Question {
    var numID: Int
    var title: String
    var answers: [Answer]
}

struct Answer: Identifiable {
    var numID: Int
    var title: String
    var isRight: Bool
    var id = UUID()
}
