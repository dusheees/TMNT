//
//  SecondQuestion.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit
struct SecondQuestion {
    // MARK: - UIProperties
    var view: UIView
    var questionLabel: UILabel
    var progressLine: UIProgressView
    var secondQuestionView: UIView
    var imageViewLeftTopSecondQuestion: UIImageView
    var imageViewRightTopSecondQuestion: UIImageView
    var imageViewLeftBottomSecondQuestion: UIImageView
    var imageViewRightBottomSecondQuestion: UIImageView
    
    // MARK: - Properties
    var gesture: Int!
    
    init(view: UIView, questionLabel: UILabel, progressLine: UIProgressView, secondQuestionView: UIView, imageViewLeftTopSecondQuestion: UIImageView, imageViewRightTopSecondQuestion: UIImageView, imageViewLeftBottomSecondQuestion: UIImageView, imageViewRightBottomSecondQuestion: UIImageView) {
        self.view = view
        self.questionLabel = questionLabel
        self.progressLine = progressLine
        self.secondQuestionView = secondQuestionView
        self.imageViewLeftTopSecondQuestion = imageViewLeftTopSecondQuestion
        self.imageViewRightTopSecondQuestion = imageViewRightTopSecondQuestion
        self.imageViewLeftBottomSecondQuestion = imageViewLeftBottomSecondQuestion
        self.imageViewRightBottomSecondQuestion = imageViewRightBottomSecondQuestion
    }
    
    // MARK: - Methods
    func addConstraints() {
        let size = UIScreen.main.bounds
        NSLayoutConstraint.activate([
            // secondQuestionView
            secondQuestionView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            secondQuestionView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            secondQuestionView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 0),
            secondQuestionView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: progressLine.topAnchor, constant: 0),
            
            // imageViewLeftTopSecondQuestion
            imageViewLeftTopSecondQuestion.centerYAnchor.constraint(equalTo: secondQuestionView.centerYAnchor, constant: -size.width * 0.15),
            imageViewLeftTopSecondQuestion.centerXAnchor.constraint(equalTo: secondQuestionView.centerXAnchor, constant: -size.width * 0.15),
            // size
            imageViewLeftTopSecondQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.25),
            imageViewLeftTopSecondQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.25),
            
            // imageViewRightTopSecondQuestion
            imageViewRightTopSecondQuestion.centerYAnchor.constraint(equalTo: secondQuestionView.centerYAnchor, constant: -size.width * 0.15),
            imageViewRightTopSecondQuestion.centerXAnchor.constraint(equalTo: secondQuestionView.centerXAnchor, constant: size.width * 0.15),
            // size
            imageViewRightTopSecondQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.25),
            imageViewRightTopSecondQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.25),
            
            // imageViewLeftBottomSecondQuestion
            imageViewLeftBottomSecondQuestion.centerYAnchor.constraint(equalTo: secondQuestionView.centerYAnchor, constant: size.width * 0.15),
            imageViewLeftBottomSecondQuestion.centerXAnchor.constraint(equalTo: secondQuestionView.centerXAnchor, constant: -size.width * 0.15),
            // size
            imageViewLeftBottomSecondQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.25),
            imageViewLeftBottomSecondQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.25),
            
            // imageViewRightBottomSecondQuestion
            imageViewRightBottomSecondQuestion.centerYAnchor.constraint(equalTo: secondQuestionView.centerYAnchor, constant: size.width * 0.15),            imageViewRightBottomSecondQuestion.centerXAnchor.constraint(equalTo: secondQuestionView.centerXAnchor, constant: size.width * 0.15),
            // size
            imageViewRightBottomSecondQuestion.heightAnchor.constraint(equalToConstant: size.width * 0.25),
            imageViewRightBottomSecondQuestion.widthAnchor.constraint(equalToConstant: size.width * 0.25),
        ])
    }
    
    // MARK: - Operations
    func tap() {
        switch gesture {
        case 0:
            print("Batman")
        case 1:
            print("Captain - America")
        case 2:
            print("Spider - man")
        case 3:
            print("Darth - Vader")
        default:
            print("fatal error")
        }
    }

}
