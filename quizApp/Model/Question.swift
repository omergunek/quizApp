//
//  Question.swift
//  quizApp
//
//  Created by Ömer Günek on 3.11.2023.
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
