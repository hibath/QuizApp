//
//  Question.swift
//  QuizApp
//
//  Created by Heba Thabet Agha on 01.05.23.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
