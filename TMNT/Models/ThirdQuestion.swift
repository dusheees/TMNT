//
//  ThirdQuestion.swift
//  TMNT
//
//  Created by Андрей on 14.11.2021.
//

import UIKit
struct ThirdQuestion {
    // MARK: - UIProperties
    var view: UIView
    var questionLabel: UILabel
    var progressLine: UIProgressView
    var thirdQuestionView: UIView
    var imageViewLeftThirdQuestion: UIImageView
    var imageViewRightThirdQuestion: UIImageView
    var slider: UISlider
    var labelLeftThirdQuestion: UILabel
    var labelRightThirdQuestion: UILabel
    var buttonThirdQuestion: UIButton
    
    // MARK: - Properties
    var factor: CGFloat
    
    init(factor: CGFloat, view: UIView, questionLabel: UILabel, progressLine: UIProgressView, thirdQuestionView: UIView, imageViewLeftThirdQuestion: UIImageView, imageViewRightThirdQuestion: UIImageView, slider: UISlider, labelLeftThirdQuestion: UILabel, labelRightThirdQuestion: UILabel, buttonThirdQuestion: UIButton) {
        self.factor = factor
        self.view = view
        self.questionLabel = questionLabel
        self.progressLine = progressLine
        self.thirdQuestionView = thirdQuestionView
        self.imageViewLeftThirdQuestion = imageViewLeftThirdQuestion
        self.imageViewRightThirdQuestion = imageViewRightThirdQuestion
        self.slider = slider
        self.labelLeftThirdQuestion = labelLeftThirdQuestion
        self.labelRightThirdQuestion = labelRightThirdQuestion
        self.buttonThirdQuestion = buttonThirdQuestion
    }
    
    // MARK: - Methods
    func addConstraints() {
        let size = UIScreen.main.bounds
        NSLayoutConstraint.activate([
            // thirdQuestionView
            thirdQuestionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            thirdQuestionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            thirdQuestionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 0),
            thirdQuestionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: progressLine.topAnchor, constant: 0),
            
            // imageViewLeftThirdQuestion
            imageViewLeftThirdQuestion.leadingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.leadingAnchor, constant: size.width * 0.0625),
            imageViewLeftThirdQuestion.bottomAnchor.constraint(equalTo: slider.topAnchor, constant: -size.width * 0.0625),
            // size
            imageViewLeftThirdQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.15),
            imageViewLeftThirdQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.15),
            
            // imageViewRightThirdQuestion
            imageViewRightThirdQuestion.trailingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.trailingAnchor, constant: -size.width * 0.0625),
            imageViewRightThirdQuestion.bottomAnchor.constraint(equalTo: slider.topAnchor, constant: -size.width * 0.0625),
            // size
            imageViewRightThirdQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.15),
            imageViewRightThirdQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.15),
            
            // slider
            slider.leadingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.leadingAnchor, constant: size.width * 0.0625),
            slider.trailingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.trailingAnchor, constant:  -size.width * 0.0625),
            slider.centerYAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.centerYAnchor),
            
            // labelLeftThirdQuestion
            labelLeftThirdQuestion.leadingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.leadingAnchor, constant: size.width * 0.0625),
            labelLeftThirdQuestion.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: size.width * 0.0625),
            
            // labelRightThirdQuestion
            labelRightThirdQuestion.trailingAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.trailingAnchor, constant: -size.width * 0.0625),
            labelRightThirdQuestion.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: size.width * 0.0625),
            
            // buttonThirdQuestion
            buttonThirdQuestion.centerXAnchor.constraint(equalTo: thirdQuestionView.safeAreaLayoutGuide.centerXAnchor),
            buttonThirdQuestion.topAnchor.constraint(equalTo: labelLeftThirdQuestion.bottomAnchor, constant: size.width * 0.0625)
        ])
    }

    mutating func correctSize() {
        // labels
        labelLeftThirdQuestion.font = UIFont.systemFont(ofSize: factor / 30)
        labelRightThirdQuestion.font = UIFont.systemFont(ofSize: factor / 30)
        
        // buttonThirdQuestion
        buttonThirdQuestion.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
    }
    
    // MARK: - Operations
    func buttonPressed() {
        print("Ответ записан")
    }
    
}
