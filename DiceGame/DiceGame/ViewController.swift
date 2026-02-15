//
//  ViewController.swift
//  DiceGame
//
//  Created by hj on 2/14/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"),#imageLiteral(resourceName: "black4"),#imageLiteral(resourceName: "black5"),#imageLiteral(resourceName: "black6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        firstImage.image = diceArray.randomElement()
        self.secondImage.image = diceArray.randomElement()
    }
    
}

