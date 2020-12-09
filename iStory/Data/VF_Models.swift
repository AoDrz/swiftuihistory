//
//  Quiz_Models.swift
//  iStory
//
//  Created by Boulanger Tim on 05/11/2020.
//

import SwiftUI

struct QuizVF {
    var id = UUID()
    var questions: [QuestionVF]
}
struct QuestionVF {
    var numID : Int
    var title: String
    var detail: String
    var answers: [AnswerVF]
}
struct AnswerVF {
    var title: String
    var isRight: Bool
}
