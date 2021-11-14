//
//  QuestionsViewController.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit


class QuestionsViewController: UIViewController {

    // MARK: - UIProperties
    // MARK: - General
    var questionLabel: UILabel = {
        var questionLabel = UILabel()
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.text = "Тут должен быть вопрос"
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 2
        return questionLabel
    }()
    var progressLine: UIProgressView = {
        var progressLine = UIProgressView()
        progressLine.translatesAutoresizingMaskIntoConstraints = false
        return progressLine
    }()
    
    // FIRST QUESTION
    var firstQuestionView: UIView = {
        var firstQuestionView = UIView()
        firstQuestionView.translatesAutoresizingMaskIntoConstraints = false
        firstQuestionView.backgroundColor = .white
        return firstQuestionView
    }()
    var purpleButtonFirstQuestion: UIButton = {
        var purpleButtonFirstQuestion = UIButton()
        purpleButtonFirstQuestion.translatesAutoresizingMaskIntoConstraints = false
        purpleButtonFirstQuestion.setTitle("Фиолетовый", for: .normal)
        purpleButtonFirstQuestion.setTitleColor(.purple, for: .normal)
        purpleButtonFirstQuestion.tag = 0
        return purpleButtonFirstQuestion
    }()
    var blueButtonFirstQuestion: UIButton = {
        var blueButtonFirstQuestion = UIButton()
        blueButtonFirstQuestion.translatesAutoresizingMaskIntoConstraints = false
        blueButtonFirstQuestion.setTitle("Синий", for: .normal)
        blueButtonFirstQuestion.setTitleColor(.systemBlue, for: .normal)
        blueButtonFirstQuestion.tag = 1
        return blueButtonFirstQuestion
    }()
    var orangeButtonFirstQuestion: UIButton = {
        var orangeButtonFirstQuestion = UIButton()
        orangeButtonFirstQuestion.translatesAutoresizingMaskIntoConstraints = false
        orangeButtonFirstQuestion.setTitle("Оранжевый", for: .normal)
        orangeButtonFirstQuestion.setTitleColor(.systemOrange, for: .normal)
        orangeButtonFirstQuestion.tag = 2
        return orangeButtonFirstQuestion
    }()
    var redButtonFirstQuestion: UIButton = {
        var redButtonFirstQuestion = UIButton()
        redButtonFirstQuestion.translatesAutoresizingMaskIntoConstraints = false
        redButtonFirstQuestion.setTitle("Красный", for: .normal)
        redButtonFirstQuestion.setTitleColor(.systemRed, for: .normal)
        redButtonFirstQuestion.tag = 3
        return redButtonFirstQuestion
    }()
    
    // SECOND QUESTION
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
    
    // THIRD QUESTION
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
    var buttonThirdQuestion: UIButton = {
        var buttonThirdQuestion = UIButton()
        buttonThirdQuestion.translatesAutoresizingMaskIntoConstraints = false
        buttonThirdQuestion.setTitle("Ответить", for: .normal)
        buttonThirdQuestion.setTitleColor(.systemBlue, for: .normal)
        return buttonThirdQuestion
    }()
    
    // MARK: - Properties
    var size: CGSize!
    var factor: CGFloat!
    
    var general: General!
    var firstQuestion: FirstQuestion!
    var secondQuestion: SecondQuestion!
    var thirdQuestion: ThirdQuestion!
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // GENERAL
        view.addSubview(questionLabel)
        view.addSubview(progressLine)
        general = General(factor: factor, view: view, questionLabel: questionLabel, progressLine: progressLine)
        general.addConstraints()
        general.correctSizze()
        
        // FIRST QUESTION
        view.addSubview(firstQuestionView)
        firstQuestionView.addSubview(purpleButtonFirstQuestion)
        firstQuestionView.addSubview(blueButtonFirstQuestion)
        firstQuestionView.addSubview(orangeButtonFirstQuestion)
        firstQuestionView.addSubview(redButtonFirstQuestion)
        
        purpleButtonFirstQuestion.addTarget(self, action: #selector(buttonPressedFirstQuestion(_:)), for: .touchUpInside)
        blueButtonFirstQuestion.addTarget(self, action: #selector(buttonPressedFirstQuestion(_:)), for: .touchUpInside)
        orangeButtonFirstQuestion.addTarget(self, action: #selector(buttonPressedFirstQuestion(_:)), for: .touchUpInside)
        redButtonFirstQuestion.addTarget(self, action: #selector(buttonPressedFirstQuestion(_:)), for: .touchUpInside)
        
        firstQuestion = FirstQuestion(factor: factor, view: view, questionLabel: questionLabel, progressLine: progressLine, firstQuestionView: firstQuestionView, purpleButtonFirstQuestion: purpleButtonFirstQuestion, blueButtonFirstQuestion: blueButtonFirstQuestion, orangeButtonFirstQuestion: orangeButtonFirstQuestion, redButtonFirstQuestion: redButtonFirstQuestion)
        firstQuestion.addConstraints()
        firstQuestion.correctSize()
//        firstQuestionView.isHidden = true
        
        // SECOND QUESTION
        view.addSubview(secondQuestionView)
        secondQuestionView.addSubview(imageViewLeftTopSecondQuestion)
        secondQuestionView.addSubview(imageViewRightTopSecondQuestion)
        secondQuestionView.addSubview(imageViewLeftBottomSecondQuestion)
        secondQuestionView.addSubview(imageViewRightBottomSecondQuestion)
        
        let gestureRecognizerLeftTop = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerRightTop = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerLeftBottom = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        let gestureRecognizerRightBottom = UITapGestureRecognizer(target: self, action: #selector(tap(_:)))
        
        imageViewLeftTopSecondQuestion.addGestureRecognizer(gestureRecognizerLeftTop)
        imageViewRightTopSecondQuestion.addGestureRecognizer(gestureRecognizerRightTop)
        imageViewLeftBottomSecondQuestion.addGestureRecognizer(gestureRecognizerLeftBottom)
        imageViewRightBottomSecondQuestion.addGestureRecognizer(gestureRecognizerRightBottom)
        
        secondQuestion = SecondQuestion(view: view, questionLabel: questionLabel, progressLine: progressLine, secondQuestionView: secondQuestionView, imageViewLeftTopSecondQuestion: imageViewLeftTopSecondQuestion, imageViewRightTopSecondQuestion: imageViewRightTopSecondQuestion, imageViewLeftBottomSecondQuestion:  imageViewLeftBottomSecondQuestion, imageViewRightBottomSecondQuestion: imageViewRightBottomSecondQuestion)
        secondQuestion.addConstraints()
        secondQuestionView.isHidden = true
        
        // THIRD QUESTION
        view.addSubview(thirdQuestionView)
        thirdQuestionView.addSubview(imageViewLeftThirdQuestion)
        thirdQuestionView.addSubview(imageViewRightThirdQuestion)
        thirdQuestionView.addSubview(slider)
        thirdQuestionView.addSubview(labelLeftThirdQuestion)
        thirdQuestionView.addSubview(labelRightThirdQuestion)
        thirdQuestionView.addSubview(buttonThirdQuestion)
        
        buttonThirdQuestion.addTarget(self, action: #selector(buttonPressedThirdQuestion(_:)), for: .touchUpInside)
        
        thirdQuestion = ThirdQuestion(factor: factor, view: view, questionLabel: questionLabel, progressLine: progressLine, thirdQuestionView: thirdQuestionView, imageViewLeftThirdQuestion: imageViewLeftThirdQuestion, imageViewRightThirdQuestion: imageViewRightThirdQuestion, slider: slider, labelLeftThirdQuestion: labelLeftThirdQuestion, labelRightThirdQuestion: labelRightThirdQuestion, buttonThirdQuestion: buttonThirdQuestion)
        thirdQuestion.addConstraints()
        thirdQuestion.correctSize()
        thirdQuestionView.isHidden = true
    }

    // MARK: - Operations
    // FIRST QUESTION
    @objc func buttonPressedFirstQuestion(_ sender: UIButton) {
        firstQuestion.sender = sender.tag
        firstQuestion.buttonPressed()
        firstQuestionView.isHidden = true
        secondQuestionView.isHidden = false
    }
    
    // SECOND QUESTION
    @objc func tap(_ gesture: UITapGestureRecognizer) {
        secondQuestion.gesture = gesture.view?.tag
        secondQuestion.tap()
        secondQuestionView.isHidden = true
        thirdQuestionView.isHidden = false
    }
    
    // THIRD QUESTION
    @objc func buttonPressedThirdQuestion(_ sender: UIButton) {
        thirdQuestion.buttonPressed()
        thirdQuestionView.isHidden = true
    }
    
}

