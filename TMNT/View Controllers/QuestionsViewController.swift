//
//  QuestionsViewController.swift
//  TMNT
//
//  Created by Андрей on 13.11.2021.
//

import UIKit


class QuestionsViewController: UIViewController {

    // MARK: - UIProperties
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var progressLine: UIProgressView!
    @IBOutlet var listOfButtonsForFirstQuestion: [UIButton]!
    
    // MARK: - Properties
    var size: CGSize!
    var factor: CGFloat!
    
    // MARK: - Methods
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctSize()
    }
    
    func correctSize() {
        // general settings
        // set up QuestionLabel
        QuestionLabel.font = UIFont.systemFont(ofSize: factor / 16)
        
        // first question settings
        // set up listOfButtonsForFirstQuestion for first question
        for button in listOfButtonsForFirstQuestion {
            button.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
        }
    }

}
