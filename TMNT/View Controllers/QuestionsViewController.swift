//
//  QuestionsViewController.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit


class QuestionsViewController: UIViewController {

    // MARK: - UIProperties
    // general
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var progressLine: UIProgressView!
    // first question
    @IBOutlet weak var stackViewFirstQuestion: UIStackView!
    @IBOutlet var listOfButtonsForFirstQuestion: [UIButton]!
    // second question
    @IBOutlet weak var stackViewSecondQuestion: UIStackView!
    @IBOutlet weak var stackViewFirstBC: UIStackView!
    @IBOutlet weak var stackViewSecondSV: UIStackView!
    @IBOutlet var listOfImagesForSecondQuestion: [UIImageView]! {
        didSet {
            for `image` in listOfImagesForSecondQuestion {
                `image`.isUserInteractionEnabled = true
            }
        }
    }
    
    
    // MARK: - Properties
    var size: CGSize!
    var factor: CGFloat!
    var firstQuestion: FirstQuestion!
    var secondQuestion: SecondQuestion!
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // first question
        firstQuestion = FirstQuestion(listOfButtonsForFirstQuestion: listOfButtonsForFirstQuestion, factor: factor)
        // second question
        secondQuestion = SecondQuestion(listOfImagesForSecondQuestion: listOfImagesForSecondQuestion, size: size, factor: factor)
        // third question
        
        
        correctSize()
    }
    
    
    func correctSize() {
        // general settings
        // set up QuestionLabel
        QuestionLabel.font = UIFont.systemFont(ofSize: factor / 16)

        // first question settings
        listOfButtonsForFirstQuestion = firstQuestion.correctSizes()
        
        // second question settings
        stackViewSecondQuestion.spacing = secondQuestion.correctSpacing()
        stackViewFirstBC.spacing = secondQuestion.correctSpacing()
        stackViewSecondSV.spacing = secondQuestion.correctSpacing()
        listOfImagesForSecondQuestion = secondQuestion.correctSizes()
        
        // third question settings
        
    }
    
    // MARK: - Actions
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        secondQuestion.imageTag = sender.view?.tag
        secondQuestion.tap()
    }
    
}

