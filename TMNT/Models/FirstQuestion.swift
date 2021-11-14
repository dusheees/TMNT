//
//  FirstQuestion.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit

struct FirstQuestion {
    
    // MARK: - UIProperties
    var view: UIView
    var questionLabel: UILabel
    var progressLine: UIProgressView
    var firstQuestionView: UIView
    var purpleButtonFirstQuestion: UIButton
    var blueButtonFirstQuestion: UIButton
    var orangeButtonFirstQuestion: UIButton
    var redButtonFirstQuestion: UIButton
    
    // MARK: - Properties
    var factor: CGFloat
    var sender: Int!
    
    init(factor: CGFloat, view: UIView, questionLabel: UILabel, progressLine: UIProgressView, firstQuestionView: UIView, purpleButtonFirstQuestion: UIButton, blueButtonFirstQuestion: UIButton, orangeButtonFirstQuestion: UIButton, redButtonFirstQuestion: UIButton) {
        self.factor = factor
        self.view = view
        self.questionLabel = questionLabel
        self.progressLine = progressLine
        self.firstQuestionView = firstQuestionView
        self.purpleButtonFirstQuestion = purpleButtonFirstQuestion
        self.blueButtonFirstQuestion = blueButtonFirstQuestion
        self.orangeButtonFirstQuestion = orangeButtonFirstQuestion
        self.redButtonFirstQuestion = redButtonFirstQuestion
    }
    
    // MARK: - Methods
    func addConstraints() {
        let size = UIScreen.main.bounds
        NSLayoutConstraint.activate([
            // firstQuestionView
            firstQuestionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            firstQuestionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            firstQuestionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 0),
            firstQuestionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: progressLine.topAnchor, constant: 0),
            
            // purpleButtonFirstQuestion
            purpleButtonFirstQuestion.centerXAnchor.constraint(equalTo: firstQuestionView.safeAreaLayoutGuide.centerXAnchor),
            purpleButtonFirstQuestion.centerYAnchor.constraint(equalTo: firstQuestionView.centerYAnchor, constant: -size.width * 0.25),
            
            // blueButtonFirstQuestion
            blueButtonFirstQuestion.centerXAnchor.constraint(equalTo: firstQuestionView.safeAreaLayoutGuide.centerXAnchor),
            blueButtonFirstQuestion.topAnchor.constraint(equalTo: purpleButtonFirstQuestion.bottomAnchor, constant: size.width * 0.03125),
            
            // orangeButtonFirstQuestion
            orangeButtonFirstQuestion.centerXAnchor.constraint(equalTo: firstQuestionView.safeAreaLayoutGuide.centerXAnchor),
            orangeButtonFirstQuestion.topAnchor.constraint(equalTo: blueButtonFirstQuestion.bottomAnchor, constant: size.width * 0.03125),
            
            // redButtonFirstQuestion
            redButtonFirstQuestion.centerXAnchor.constraint(equalTo: firstQuestionView.safeAreaLayoutGuide.centerXAnchor),
            redButtonFirstQuestion.topAnchor.constraint(equalTo: orangeButtonFirstQuestion.bottomAnchor, constant: size.width * 0.03125)
        ])
    }
    
    func correctSize() {
        purpleButtonFirstQuestion.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
        blueButtonFirstQuestion.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
        orangeButtonFirstQuestion.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
        redButtonFirstQuestion.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
    }
    
    // MARK: - Operations
    func buttonPressed() {
        switch sender {
        case 0:
            print("Фиолетовый")
        case 1:
            print("Синий")
        case 2:
            print("Оранжевый")
        case 3:
            print("Красный")
        default:
            print("fatal error")
        }
    }
    
}
