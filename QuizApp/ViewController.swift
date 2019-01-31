//
//  ViewController.swift
//  High Point University
//  QuizApp
//
//  Created by Brandon Tate on 1/27/19.
//  Copyright © 2019 Brandon Tate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is HPU's school mascot?",
        "What is a male deer called?",
        "How many eggs are in a dozen?",
        "Who won the first (and second) Super Bowl?",
        "What company has a check mark as its logo?"
    ]
    let answers: [String] = [
       "14",
       "Montpelier",
       "Grapes",
       "Panther",
       "Buck",
       "12",
       "Green Bay Packers",
       "Nike"
       
    ]
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnwer(_ sender: UIButton)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

