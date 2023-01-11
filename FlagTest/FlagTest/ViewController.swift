//
//  ViewController.swift
//  FlagTest
//
//  Created by Yavuz Yerer on 7.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var aOption: UIButton!
    @IBOutlet weak var bOption: UIButton!
    @IBOutlet weak var cOption: UIButton!
    @IBOutlet weak var dOption: UIButton!
    
    var flagArrays = [#imageLiteral(resourceName: "Ireland") , #imageLiteral(resourceName: "Italy") , #imageLiteral(resourceName: "Nigeria") , #imageLiteral(resourceName: "France") , #imageLiteral(resourceName: "Poland") , #imageLiteral(resourceName: "Germany") , #imageLiteral(resourceName: "Spain") , #imageLiteral(resourceName: "Us") , #imageLiteral(resourceName: "Estonia") , #imageLiteral(resourceName: "Turkey") , #imageLiteral(resourceName: "Russia")]
    

    
    
    
    struct Question {
        var question : String
        var answers : [String]
        var correctAnswer : Int
        var images : UIImage
    }
    
    let questions = [
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Türkiye", "Estonya", "Filistin","Almanya"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Estonia")),
        
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Fransa", "İtalya", "İspanya","Norveç"] ,
                 correctAnswer: 0,
                 images: #imageLiteral(resourceName: "France")),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Çek Cumhuriyeti", "Almanya", "Nijerya","Litvanya"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Germany")),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Yunanistan", "İrlanda", "Rusya","Ukrayna"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Ireland")),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Türkiye", "Fransa", "Çek Cumhuriyeti","İtalya"] ,
                 correctAnswer: 3,
                 images: #imageLiteral(resourceName: "Italy") ),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Azerbaycan", "Nijerya", "Gürcistan","Bulgaristan"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Nigeria")),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Polonya", "İspanya", "Libya","Belarus"] ,
                 correctAnswer: 0,
                 images: #imageLiteral(resourceName: "Poland") ),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Almanya", "Rusya", "İngiltere","Çin"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Russia") ),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Tayland", "Türkistan", "İspanya","Amerika"] ,
                 correctAnswer: 2,
                 images: #imageLiteral(resourceName: "Spain") ),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["İsveç", "Norveç", "Türkiye","Fransa"] ,
                 correctAnswer: 2,
                 images: #imageLiteral(resourceName: "Turkey") ),
        Question(question: "Yukarıdaki bayrak aşağıdaki ülkelerin hangisinin bayrağıdır",
                 answers: ["Azerbaycan", "Amerika", "Rusya","Çin"] ,
                 correctAnswer: 1,
                 images: #imageLiteral(resourceName: "Us") )
    ]
    
    var currentQuestion: Question?
    var currentQuestionPozisyon = 0
    var noCorrect = 0
    
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var flag: UIImageView!
    
    @IBAction func secenek1(_ sender: UIButton) {
        checkAnswer(userAnswer: sender.currentTitle!)
        
    }
    @IBAction func secenek2(_ sender: UIButton) {
        checkAnswer(userAnswer: sender.currentTitle!)
    }
    @IBAction func secenek3(_ sender: UIButton) {
        checkAnswer(userAnswer: sender.currentTitle!)
    }
        
    @IBAction func secenek4(_ sender: UIButton) {
        checkAnswer(userAnswer: sender.currentTitle!)
        
    }
    
        
        func checkAnswer(userAnswer : String){
            let userGotItRight = questions[currentQuestionPozisyon].correctAnswer
            if(userAnswer == questions[currentQuestionPozisyon].answers[userGotItRight]){
                var title : String
                title = "Correct Answer"
                noCorrect += 1
                
            }else{
                title = "Wrong Answer"
                noCorrect -= 1
            }
            NextQuestion()
        }
        func NextQuestion(){
            
            if(currentQuestionPozisyon + 1 < questions.count){
                
                currentQuestionPozisyon += 1
                currentQuestion = questions[currentQuestionPozisyon]
                setQuestion()
            }else {
                currentQuestionPozisyon = 0
            }
        }
        func setQuestion() {
            flagView.image = questions[currentQuestionPozisyon].images
            answer0.setTitle(questions[currentQuestionPozisyon], for: <#T##UIControl.State#>)
                    }
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[0]
        setQuestion()
        
        
    }
        
        
    }

