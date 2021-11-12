//
//  WelcomeViewController.swift
//  TMNT
//
//  Created by Андрей on 12.11.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - UIProperties
    @IBOutlet var listOfImages: [UIImageView]!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var welcomeButton: UIButton!
    // constrains
    @IBOutlet var listOfConstrains: [NSLayoutConstraint]!
    
    
    
    // MARK: - Properties
    var size: CGSize!
    var factor: CGFloat!
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        size = view.bounds.size
        factor = min(size.width, size.height)
        
        correctSize()
    }
    
    func correctSize() {
        for `image` in listOfImages {
            `image`.transform = CGAffineTransform(scaleX: factor / 500, y: factor / 500)
        }
        
        for `constraint` in listOfConstrains {
            `constraint`.constant = valueForConstrains()
        }
        
        welcomeLabel.font = UIFont.systemFont(ofSize: factor / 16)
        welcomeButton.titleLabel?.font = UIFont.systemFont(ofSize: factor / 16)
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
        case 428.0... :
            value = 120 + factor / 600
        case 321.0 ... 428.0:
            value = 20 + factor / 600
        default:
            value = 7 + factor / 600
        }
        
        return value
    }
    
    // passing parameters through the navigation controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController, let myViewController = navigationController.viewControllers.first as? QuestionsViewController else {
            return
        }

        myViewController.size = size
        myViewController.factor = factor
    }
    
    // MARK: - Actions
    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toQuestionsViewController", sender: nil)
    }
    
}

