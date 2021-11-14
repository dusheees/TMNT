//
//  General.swift
//  TMNT
//
//  Created by Андрей on 15.11.2021.
//

import UIKit
struct General {
    
    // MARK: - UIProperties
    var view: UIView
    var questionLabel: UILabel
    var progressLine: UIProgressView
    
    // MARK: - Properties
    var factor: CGFloat
    
    init(factor: CGFloat, view: UIView, questionLabel: UILabel, progressLine: UIProgressView) {
        self.factor = factor
        self.view = view
        self.questionLabel = questionLabel
        self.progressLine = progressLine
    }
    
    func addConstraints() {
        let size = UIScreen.main.bounds
        NSLayoutConstraint.activate([
            // questionLabel
            questionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: size.width * 0.0625),
            questionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -size.width * 0.0625),
            questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            
            // progressLine
            progressLine.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: size.width * 0.0625),
            progressLine.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -size.width * 0.0625),
            progressLine.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -size.width * 0.0625),
        ])
    }
    
    mutating func correctSizze() {
        questionLabel.font = UIFont.systemFont(ofSize: factor / 16)
    }
    
}
