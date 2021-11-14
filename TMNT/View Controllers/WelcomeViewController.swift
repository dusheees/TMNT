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
    
    var welcomeScreen: WelcomeScreen!
    
    // MARK: - Methods
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        return .portrait
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        size = view.bounds.size
        factor = min(size.width, size.height)
        
        welcomeScreen = WelcomeScreen(listOfImages: listOfImages, welcomeLabel: welcomeLabel, welcomeButton: welcomeButton, listOfConstrains: listOfConstrains, size: size, factor: factor)
        
        correctSize()
    }
    
    func correctSize() {
        listOfImages = welcomeScreen.correctSizesImageView()
        listOfConstrains = welcomeScreen.correctSizesConstrains()
        welcomeLabel = welcomeScreen.correctSizesLabel()
        welcomeButton = welcomeScreen.correctSizesButton()
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

