//
//  ViewController.swift
//  quizApp
//
//  Created by Ömer Günek on 1.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progessBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progessBar.progress = quizBrain.getProgress()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

