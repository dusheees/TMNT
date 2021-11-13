//
//  FirstQuestion.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit

struct FirstQuestion {
    
    // MARK: - UIProperties
    var listOfButtonsForFirstQuestion: [UIButton]
    
    // MARK: - Properties
    var factor: CGFloat
    
    init(listOfButtonsForFirstQuestion: [UIButton], factor: CGFloat) {
        self.listOfButtonsForFirstQuestion = listOfButtonsForFirstQuestion
        self.factor = factor
    }
    
    // MARK: - Methods
    // correct view
    mutating func correctSizes() -> [UIButton] {
        for button in listOfButtonsForFirstQuestion {
            button.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
            listOfButtonsForFirstQuestion.append(button)
        }
        return listOfButtonsForFirstQuestion
    }
    
    // operations
    
}
