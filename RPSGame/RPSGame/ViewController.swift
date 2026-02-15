//
//  ViewController.swift
//  RPSGame
//
//  Created by hojeongpark on 2/15/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        comChoiceLabel.text = "ready"
        myChoiceLabel.text = "ready"
    }
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        myChoice = sender.currentTitle!
        
    }
    

    @IBAction func selectButtonTapped(_ sender: UIButton) {
        if(myChoice == nil) {
            return
        }
        
        
        let choices = [Rps.rock.rawValue, Rps.scissors.rawValue, Rps.paper.rawValue]
        let comChoice = choices.randomElement()
        
        comChoiceLabel.text = comChoice
        comImageView.image = getImage(name: comChoice!)
        
        myChoiceLabel.text = myChoice
        myImageView.image = getImage(name: myChoice!)
        
        if(comChoiceLabel.text == "rock"){
            if(myChoiceLabel.text == "paper"){
                mainLabel.text = "win"
            } else if (myChoiceLabel.text == "scissors"){
                mainLabel.text = "lose"
            } else {
                mainLabel.text = "draw"
            }
        }
        if(comChoiceLabel.text == "scissors"){
            if(myChoiceLabel.text == "rock"){
                mainLabel.text = "win"
            }else if (myChoiceLabel.text == "paper"){
                mainLabel.text = "lose"
            }else {
                mainLabel.text = "draw"
            }
        }
        if(comChoiceLabel.text == "paper"){
            if(myChoiceLabel.text == "rock") {
                mainLabel.text = "lose"
            } else if (myChoiceLabel.text == "scissors"){
                mainLabel.text = "win"
            } else {
                mainLabel.text = "draw"
            }
        }
    }
    
    func getImage(name: String) -> UIImage {
        switch(name) {
            case "rock": return #imageLiteral(resourceName: "rock")
            case "scissors": return #imageLiteral(resourceName: "scissors")
            case "paper": return #imageLiteral(resourceName: "paper")
        default:
            return #imageLiteral(resourceName: "ready")
        }

    
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "ready"
        
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "ready"
        
        mainLabel.text = "select"
    }
}
