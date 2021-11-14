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
    var progressLine: UIProgressView
    
    init(view: UIView, progressLine: UIProgressView) {
        self.view = view
        self.progressLine = progressLine
    }
    
    func addConstraints() {
        let size = UIScreen.main.bounds
        NSLayoutConstraint.activate([
            // progressLine
            progressLine.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            progressLine.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            progressLine.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ])
    }
    
}
