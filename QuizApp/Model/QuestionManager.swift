//
//  QuestionBrain.swift
//  QuizApp
//
//  Created by Heba Thabet Agha on 01.05.23.
//


import Foundation

struct QuestionManager {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Strawberries are among the fruits that contain the highest levels of pesticides.", a: "True"),
        Question(q: "Too much fast food may not be associated with an increase in autoimmune diseases.", a: "False"),
        Question(q: "Vitamin D supports bone health and helps with calcium absorption.", a: "True"),
        Question(q: "Fiber-rich foods help maintain healthy cholesterol levels and promote heart health.", a: "True"),
        Question(q: "Probiotics found in yogurt and fermented foods support your bones.", a: "False"),
        Question(q: "Zinc is not essential for immune function, wound healing, and DNA synthesis.", a: "False"),
        Question(q: "Canola oil is a highly healthy choice.", a: "False"),
        Question(q: "Antioxidants in berries protect cells from damage and promote overall wellness.", a: "False"),
        Question(q: "Olive oil is a very healthy choice.", a: "True"),
        Question(q: "Farmed salmon is healthier than wild salmon.", a: "False"),
        Question(q: "Polyphenols in green tea have antioxidant and anti-inflammatory properties.", a: "True"),
        Question(q: "Mixing turmeric with black pepper significantly increases its absorption rate.", a: "True"),
        Question(q: "Organic food has fewer pesticides", a: "True"),
        Question(q: "You don't have to wash and scrub organic fruits and vegetables well under running water.", a: "False"),
        Question(q: "Iron-rich foods like spinach and lentils help prevent anemia and support energy levelss.", a: "True")
        
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

