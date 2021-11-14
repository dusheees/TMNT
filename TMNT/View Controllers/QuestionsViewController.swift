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
    var secondQuestionView: UIView = {
        var secondQuestionView = UIView()
        secondQuestionView.translatesAutoresizingMaskIntoConstraints = false
        secondQuestionView.backgroundColor = .white
        return secondQuestionView
    }()
    var imageViewLeftTopSecondQuestion: UIImageView = {
        var imageViewLeftTop = UIImageView()
        imageViewLeftTop.translatesAutoresizingMaskIntoConstraints = false
        imageViewLeftTop.image = UIImage(named: "batman@x1")
        imageViewLeftTop.tag = 0
        imageViewLeftTop.isUserInteractionEnabled = true
        return imageViewLeftTop
    }()
    var imageViewRightTopSecondQuestion: UIImageView = {
        var imageViewRightTop = UIImageView()
        imageViewRightTop.translatesAutoresizingMaskIntoConstraints = false
        imageViewRightTop.image = UIImage(named: "captain-america@x1")
        imageViewRightTop.isUserInteractionEnabled = true
        imageViewRightTop.tag = 1
        return imageViewRightTop
    }()
    var imageViewLeftBottomSecondQuestion: UIImageView = {
        var imageViewLeftBottom = UIImageView()
        imageViewLeftBottom.translatesAutoresizingMaskIntoConstraints = false
        imageViewLeftBottom.image = UIImage(named: "spiderman@x1")
        imageViewLeftBottom.isUserInteractionEnabled = true
        imageViewLeftBottom.tag = 2
        return imageViewLeftBottom
    }()
    var imageViewRightBottomSecondQuestion: UIImageView = {
        var imageViewRightBottom = UIImageView()
        imageViewRightBottom.translatesAutoresizingMaskIntoConstraints = false
        imageViewRightBottom.image = UIImage(named: "darth-vader@x1")
        imageViewRightBottom.isUserInteractionEnabled = true
        imageViewRightBottom.tag = 3
        return imageViewRightBottom
    }()
    var listOfImagesSecondQuestion = [UIImageView]()
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
        view.addSubview(secondQuestionView)
        secondQuestionView.addSubview(imageViewLeftTopSecondQuestion)
        secondQuestionView.addSubview(imageViewRightTopSecondQuestion)
        secondQuestionView.addSubview(imageViewLeftBottomSecondQuestion)
        secondQuestionView.addSubview(imageViewRightBottomSecondQuestion)
        listOfImagesSecondQuestion = [imageViewLeftTopSecondQuestion, imageViewRightTopSecondQuestion, imageViewLeftBottomSecondQuestion, imageViewRightBottomSecondQuestion]
        
        let gestureRecognizerLeftTop = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerRightTop = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerLeftBottom = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerRightBottom = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        
        imageViewLeftTopSecondQuestion.addGestureRecognizer(gestureRecognizerLeftTop)
        imageViewRightTopSecondQuestion.addGestureRecognizer(gestureRecognizerRightTop)
        imageViewLeftBottomSecondQuestion.addGestureRecognizer(gestureRecognizerLeftBottom)
        imageViewRightBottomSecondQuestion.addGestureRecognizer(gestureRecognizerRightBottom)
        
        secondQuestion = SecondQuestion(view: view, questionLabel: questionLabel, secondQuestionView: secondQuestionView, imageViewLeftTopSecondQuestion: imageViewLeftTopSecondQuestion, imageViewRightTopSecondQuestion: imageViewRightTopSecondQuestion, imageViewLeftBottomSecondQuestion:  imageViewLeftBottomSecondQuestion, imageViewRightBottomSecondQuestion: imageViewRightBottomSecondQuestion)
        secondQuestion.addConstraints()
//        secondQuestionView.isHidden = true
        // third question
        view.addSubview(thirdQuestionView)
        thirdQuestionView.addSubview(imageViewLeftThirdQuestion)
        thirdQuestionView.addSubview(imageViewRightThirdQuestion)
        thirdQuestionView.addSubview(slider)
        thirdQuestionView.addSubview(labelLeftThirdQuestion)
        thirdQuestionView.addSubview(labelRightThirdQuestion)
        thirdQuestion = ThirdQuestion(view: view, questionLabel: questionLabel, thirdQuestionView: thirdQuestionView, imageViewLeftThirdQuestion: imageViewLeftThirdQuestion, imageViewRightThirdQuestion: imageViewRightThirdQuestion, slider: slider, labelLeftThirdQuestion: labelLeftThirdQuestion, labelRightThirdQuestion: labelRightThirdQuestion, factor: factor)
        thirdQuestion.addConstraints()
        thirdQuestion.correctSize()
        thirdQuestionView.isHidden = true
        
        correctSize()
    }
    
    private func correctSize() {
        // general settings
        // set up QuestionLabel
        questionLabel.font = UIFont.systemFont(ofSize: factor / 16)

        // first question settings
        listOfButtonsForFirstQuestion = firstQuestion.correctSizes()
        
        // second question settings

        
    }
    
    @objc func tap(_ gesture: UITapGestureRecognizer) {
        print("tap")
    }

    // MARK: - Actions

}

