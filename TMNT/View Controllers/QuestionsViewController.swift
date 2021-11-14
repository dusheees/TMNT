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
    @IBOutlet weak var questionLabel: UILabel!
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
    // third question
    var thirdQuestionView: UIView = {
        var thirdQuestionView = UIView()
        thirdQuestionView.translatesAutoresizingMaskIntoConstraints = false
        thirdQuestionView.backgroundColor = .white
        return thirdQuestionView
    }()
    var imageViewLeftThirdQuestion: UIImageView = {
        var imageViewLeftThirdQuestion = UIImageView()
        imageViewLeftThirdQuestion.translatesAutoresizingMaskIntoConstraints = false
        imageViewLeftThirdQuestion.image = UIImage(named: "alone@x1")
        return imageViewLeftThirdQuestion
    }()
    var imageViewRightThirdQuestion: UIImageView = {
        var imageViewRightThirdQuestion = UIImageView()
        imageViewRightThirdQuestion.translatesAutoresizingMaskIntoConstraints = false
        imageViewRightThirdQuestion.image = UIImage(named: "team@x1")
        return imageViewRightThirdQuestion
    }()
    var slider: UISlider = {
        var slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    var labelLeftThirdQuestion: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "в одиночку"
        return label
    }()
    var labelRightThirdQuestion: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "в команде"
        return label
    }()
    
    // MARK: - Properties
    var size: CGSize!
    var factor: CGFloat!
    
    var firstQuestion: FirstQuestion!
    var secondQuestion: SecondQuestion!
    var thirdQuestion: ThirdQuestion!
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // first question
        firstQuestion = FirstQuestion(listOfButtonsForFirstQuestion: listOfButtonsForFirstQuestion, factor: factor)
        // second question
        secondQuestion = SecondQuestion(listOfImagesForSecondQuestion: listOfImagesForSecondQuestion, size: size, factor: factor)
        // third question
        view.addSubview(thirdQuestionView)
        thirdQuestionView.addSubview(imageViewLeftThirdQuestion)
        thirdQuestionView.addSubview(imageViewRightThirdQuestion)
        thirdQuestionView.addSubview(slider)
        thirdQuestionView.addSubview(labelLeftThirdQuestion)
        thirdQuestionView.addSubview(labelRightThirdQuestion)
        thirdQuestion = ThirdQuestion(view: view, questionLabel: questionLabel, thirdQuestionView: thirdQuestionView, imageViewLeftThirdQuestion: imageViewLeftThirdQuestion, imageViewRightThirdQuestion: imageViewRightThirdQuestion, slider: slider, labelLeftThirdQuestion: labelLeftThirdQuestion, labelRightThirdQuestion: labelRightThirdQuestion, size: size, factor: factor)
        thirdQuestion.addConstraints()
        thirdQuestion.correctSize()
        correctSize()
    }
    
    private func correctSize() {
        // general settings
        // set up QuestionLabel
        questionLabel.font = UIFont.systemFont(ofSize: factor / 16)

        // first question settings
        listOfButtonsForFirstQuestion = firstQuestion.correctSizes()
        
        // second question settings
        stackViewSecondQuestion.spacing = secondQuestion.correctSpacing()
        stackViewFirstBC.spacing = secondQuestion.correctSpacing()
        stackViewSecondSV.spacing = secondQuestion.correctSpacing()
        listOfImagesForSecondQuestion = secondQuestion.correctSizes()
        
    }
    
    // MARK: - Actions
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        secondQuestion.imageTag = sender.view?.tag
        secondQuestion.tap()
    }
    
}

