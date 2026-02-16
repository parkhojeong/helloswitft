//
//  ViewController.swift
//  UpDownGame
//
//  Created by hojeongpark on 2/16/26.
//

import UIKit

class ViewController: UIViewController {

    var randomNumber: Int = Int.random(in: 1...10)
    var selectedNumber: Int = 1
    
    @IBOutlet weak var updownLabel: UILabel!
    
    @IBOutlet weak var selectedNumberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updownLabel.text = "SELECT"
        selectedNumberLabel.text = ""
    }
    
    func getAccumulativeNumber(n: Int) -> Int {
        guard selectedNumber > 0 else {
            return n
        }
        return selectedNumber * 10 + n
    }


    @IBAction func number1Pressed(_ sender: UIButton) {
        guard let numString = sender.currentTitle else {return}
        
        guard let num = Int(numString) else {return}
        
        print(selectedNumber)
        
        selectedNumber =  num
        selectedNumberLabel.text = "\(selectedNumber)"
    }
    
    
    @IBAction func selectPressed(_ sender: UIButton) {
        if selectedNumber == randomNumber {
            updownLabel.text = "correct!"
        } else if selectedNumber < randomNumber {
            updownLabel.text = "up!"
        } else {
            updownLabel.text = "down!"
        }
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        randomNumber = Int.random(in: 1...10)
        selectedNumber = 0
        
        selectedNumberLabel.text = ""
        updownLabel.text = "SELECT"
    }
    
}

