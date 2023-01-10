//
//  ViewController.swift
//  FlagTest
//
//  Created by Yavuz Yerer on 7.01.2023.
//

import UIKit

class ViewController: UIViewController {
 
    
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            currentQuestion = questions[0]
            setQuestion()
        }
    
    
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var aOption: UIButton!
    @IBOutlet weak var bOption: UIButton!
    @IBOutlet weak var cOption: UIButton!
    @IBOutlet weak var dOption: UIButton!
    
    
    
    var flagArrays = [#imageLiteral(resourceName: "Ireland") , #imageLiteral(resourceName: "Italy") , #imageLiteral(resourceName: "Nigeria") , #imageLiteral(resourceName: "France") , #imageLiteral(resourceName: "Poland") , #imageLiteral(resourceName: "Germany") , #imageLiteral(resourceName: "Spain") , #imageLiteral(resourceName: "Us") , #imageLiteral(resourceName: "Estonia") , #imageLiteral(resourceName: "Turkey") , #imageLiteral(resourceName: "Russia")]
    var soru = "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır?"
    
    struct Question {
        let question : String
        let answers : [String]
        let correctAnswer : Int
    }
    
    var questions : [Question] = [
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Türkiye", "Estonya", "Filistin","Almanya"] ,
             correctAnswer: 1 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Fransa", "İtalya", "İspanya","Norveç"] ,
             correctAnswer: 0 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Çek Cumhuriyeti", "Almanya", "Nijerya","Litvanya"] ,
             correctAnswer: 1 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Yunanistan", "İrlanda", "Rusya","Ukrayna"] ,
             correctAnswer: 1 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Türkiye", "Fransa", "Çek Cumhuriyeti","İtalya"] ,
             correctAnswer: 3 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Azerbaycan", "Nijerya", "Gürcistan","Bulgaristan"] ,
             correctAnswer: 1 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Polonya", "İspanya", "Libya","Belarus"] ,
             correctAnswer: 0 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Almanya", "Rusya", "İngiltere","Çin"] ,
             correctAnswer: 1 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Tayland", "Türkistan", "İspanya","Amerika"] ,
             correctAnswer: 2 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["İsveç", "Norveç", "Türkiye","Fransa"] ,
             correctAnswer: 2 ),
    Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
             answers: ["Azerbaycan", "Amerika", "Rusya","Çin"] ,
             correctAnswer: 1 )
    ]
    
    var currentQuestion: Question?
    var currentQuestionPos = 0
        
    var noCorrect = 0
    
    @IBOutlet weak var answer0: UIButton!
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBOutlet weak var answer2: UIButton!
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBAction func secenek1(_ sender: UIButton) {
        
    }
    @IBAction func secenek2(_ sender: UIButton) {
        
    }
    @IBAction func secenek3(_ sender: UIButton) {
        
    }
    @IBAction func secenek4(_ sender: UIButton) {
        
    }
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    func checkAnswer(idx : Int){
        
        if(idx == currentQuestion!.correctAnswer) {
                    noCorrect += 1
                }
    
     
    
    }
    func loadNextQuestion(){
        
        if(currentQuestionPos + 1 < questions.count){
            
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            setQuestion()
         }else {
             performSegue(withIdentifier: "sgShowResults", sender: nil)
         }
                                 }
    func setQuestion() {
            lblQuestion.text = currentQuestion!.question
            answer0.setTitle(currentQuestion!.answers[0], for: .normal)
            answer1.setTitle(currentQuestion!.answers[1], for: .normal)
            answer2.setTitle(currentQuestion!.answers[2], for: .normal)
            answer3.setTitle(currentQuestion!.answers[3], for: .normal)
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    


