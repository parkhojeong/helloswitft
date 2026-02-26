//
//  BMIViewController.swift
//  4BMI
//
//  Created by hj on 2/18/26.
//

import UIKit

class BMIViewController: UIViewController {

    var bmi: Double?
    
    func setBmi(_ bmi: Double) {
        self.bmi = bmi
    }
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = "\(bmi ?? 0.0)"
    }
    

    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
