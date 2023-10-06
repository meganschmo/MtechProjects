//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Megan Schmoyer on 9/21/23.
//

import UIKit

class QuestionViewController: UIViewController {
    

    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var rangedSlider: UISlider!
    @IBOutlet weak var questionProgressVIew: UIProgressView!
    
    
    var questions: [Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Sushi", type: .hurricane),
                Answer(text: "Steak", type: .wildfire),
                Answer(text: "Burritos", type: .earthquake),
                Answer(text: "Fried Chicken", type: .tornado)
            ]
        ),
        Question(
            text: "Which weather do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Rainy", type: .hurricane),
                Answer(text: "Sunny", type: .wildfire),
                Answer(text: "Cloudy", type: .earthquake),
                Answer(text: "Lightning", type: .tornado)
            ]
        ),
        Question(
            text: "Where do you put your dirty clothes?",
            type: .single,
            answers: [
                Answer(text: "On a dresser", type: .hurricane),
                Answer(text: "In the bathroom", type: .wildfire),
                Answer(text: "In the laundry basket", type: .earthquake),
                Answer(text: "Anywhere", type: .tornado)
                ]
            ),
        Question(
            text: "What is your preferred method of travel?",
            type: .single,
            answers: [
                Answer(text: "Boat", type: .hurricane),
                Answer(text: "Car", type: .wildfire),
                Answer(text: "Train", type: .earthquake),
                Answer(text: "Plane", type: .tornado)
                ]
            ),
        Question(
            text: "Do you like rain?",
            type: .ranged,
            answers: [
                Answer(text: "I despise rain", type: .wildfire),
                Answer(text: "I don't care", type: .earthquake),
                Answer(text: "I like rain", type: .tornado),
                Answer(text: "I love rain", type: .hurricane)
                ]
            )
        ]
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
    
    @IBAction func rangedAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        nextQuestion()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
    }
    
    
    
    func updateUI() {
        singleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressVIew.setProgress(totalProgress, animated: true)

        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }



    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5, animated: false)
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
