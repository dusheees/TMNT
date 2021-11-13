//
//  ThirdQuestion.swift
//  TMNT
//
//  Created by Андрей on 14.11.2021.
//

import UIKit
struct ThirdQuestion {
    
    // MARK: - UIProperties
    var listOfImagesForThirdQuestion: [UIImageView]!
    var listOfLabelsForThirdQuestion: [UILabel]!
    
    // MARK: - Properties
    var size: CGSize
    var factor: CGFloat
    
    init(listOfImagesForThirdQuestion: [UIImageView], listOfLabelsForThirdQuestion: [UILabel], size: CGSize, factor: CGFloat) {
        self.listOfImagesForThirdQuestion = listOfImagesForThirdQuestion
        self.listOfLabelsForThirdQuestion = listOfLabelsForThirdQuestion
        self.size = size
        self.factor = factor
    }
    
    // MARK: - Methods
    mutating func correctSizesImageView() -> [UIImageView] {
        for `image` in listOfImagesForThirdQuestion {
            `image`.transform = CGAffineTransform(scaleX: factor / 500, y: factor / 500)
        }
        return listOfImagesForThirdQuestion
    }
    
    mutating func correctSizesLabels() -> [UILabel] {
        for `label` in listOfLabelsForThirdQuestion {
            `label`.font = UIFont.systemFont(ofSize: factor / 20)
        }
        return listOfLabelsForThirdQuestion
    }
    
//    mutating func correctSpacing() -> CGFloat {
//        var spacing: CGFloat
//        spacing = valueForSpacing()
//        return spacing
//    }
//    
//    func valueForSpacing() -> CGFloat {
//        let value: CGFloat
//        let sizeValue: Double
//
//        if size.width < size.height {
//            sizeValue = size.width
//        } else {
//            sizeValue = size.height
//        }
//
//        switch sizeValue {
//        case 428.0... :
//            value = size.width / 2 * factor / 600
//            print(true)
//        case 321.0 ... 428.0:
//            value = 10 + factor / 600
//            print(false)
//        default:
//            value = factor / 600
//        }
//        return value
//    }
    
}
