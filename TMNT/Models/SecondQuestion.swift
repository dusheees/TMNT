//
//  SecondQuestion.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit
struct SecondQuestion {
    
    // MARK: - UIProperties
    var listOfImagesForSecondQuestion: [UIImageView]!
    
    // MARK: - Properties
    var size: CGSize
    var factor: CGFloat
    var imageTag: Int!
    
    init(listOfImagesForSecondQuestion: [UIImageView], size: CGSize, factor: CGFloat) {
        self.listOfImagesForSecondQuestion = listOfImagesForSecondQuestion
        self.size = size
        self.factor = factor
    }
    
    // MARK: - Methods
    // correct view
    mutating func correctSizes() -> [UIImageView] {
        for `image` in listOfImagesForSecondQuestion {
            `image`.transform = CGAffineTransform(scaleX: valueForCorrectImageSize(), y: valueForCorrectImageSize())
        }
        return listOfImagesForSecondQuestion
    }
    
    func valueForCorrectImageSize() -> CGFloat {
        let value: CGFloat
        let sizeValue: Double

        if size.width < size.height {
            sizeValue = size.width
        } else {
            sizeValue = size.height
        }

        switch sizeValue {
        case 1024:
            value = factor / 700
        default:
            value = factor / 500
        }
        return value
    }
    
    mutating func correctSpacing() -> CGFloat {
        var spacing: CGFloat
        spacing = valueForSpacing()
        return spacing
    }
    
    func valueForSpacing() -> CGFloat {
        let value: CGFloat
        let sizeValue: Double

        if size.width < size.height {
            sizeValue = size.width
        } else {
            sizeValue = size.height
        }

        switch sizeValue {
        case 428.0... :
            value = 150 + factor / 600
        case 321.0 ... 428.0:
            value = 40 + factor / 600
        default:
            value = factor / 600
        }
        return value
    }
    
    // operations
    func tap() {
        switch imageTag {
        case 0:
            print("batman")
        case 1:
            print("captain-america")
        case 2:
            print("spider-man")
        case 3:
            print("darth-vader")
        default:
            print("fatal error")
        }
    }
}
