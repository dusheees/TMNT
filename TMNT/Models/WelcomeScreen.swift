//
//  WelcomeScreen.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit
struct WelcomeScreen {
    
    // MARK: - UIProperties
    var listOfImages: [UIImageView]
    var welcomeLabel: UILabel
    var welcomeButton: UIButton
    var listOfConstrains: [NSLayoutConstraint]
    
    // MARK: - Properties
    var size: CGSize
    var factor: CGFloat
    
    init(listOfImages: [UIImageView], welcomeLabel: UILabel, welcomeButton: UIButton, listOfConstrains: [NSLayoutConstraint], size: CGSize, factor: CGFloat) {
        self.listOfImages = listOfImages
        self.welcomeLabel = welcomeLabel
        self.welcomeButton = welcomeButton
        self.listOfConstrains = listOfConstrains
        self.size = size
        self.factor = factor
    }
    
    // MARK: - Methods
    // correct view
    mutating func correctSizesImageView() -> [UIImageView] {
        for `image` in listOfImages {
            `image`.transform = CGAffineTransform(scaleX: factor / 500, y: factor / 500)
        }
        return listOfImages
    }
    
    mutating func correctSizesConstrains() -> [NSLayoutConstraint] {
        for `constraint` in listOfConstrains {
            `constraint`.constant = valueForConstrains()
        }
        return listOfConstrains
    }
    
    func valueForConstrains() -> CGFloat {
        let value: CGFloat
        let sizeValue: Double

        if size.width < size.height {
            sizeValue = size.width
        } else {
            sizeValue = size.height
        }

        switch sizeValue {
        case 1024:
            value = 120 + factor / 600
        case 428.0... :
            value = 90 + factor / 600
        case 321.0 ... 428.0:
            value = 20 + factor / 600
        default:
            value = 7 + factor / 600
        }

        return value
    }
    
    mutating func correctSizesLabel() -> UILabel {
        welcomeLabel.font = UIFont.systemFont(ofSize: factor / 16)
        return welcomeLabel
    }
    
    mutating func correctSizesButton() -> UIButton {
        welcomeButton.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
        return welcomeButton
    }
    
}
