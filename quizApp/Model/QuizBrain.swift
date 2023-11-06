//
//  quizBrain.swift
//  quizApp
//
//  Created by Ömer Günek on 4.11.2023.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "4 + 2 = 6", a: "True"),
        Question(q: "5 - 3 > 1", a: "True"),
        Question(q: "3 + 8 < 10", a: "False")
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
}
