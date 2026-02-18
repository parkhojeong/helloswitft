//
//  ViewController.swift
//  4BMI
//
//  Created by hj on 2/18/26.
//

import UIKit

class ViewController: UIViewController {
    
    var height: Int = 0
    var weight: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        let vc = FirstViewController()
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? SecondViewController else { return }
    
        self.present(secondVC, animated: true)
    }
    
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    // 4) 스토리보드에서의 화면 이동(직접 세그웨이)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        print(segue.destination)
    }
    
    
    @IBAction func heightEdited(_ sender: UITextField) {
        guard let height = Int(sender.text ?? "") else {
            return
        }
        
        self.height = height
    }
    
    
    @IBAction func weightEdited(_ sender: UITextField) {
        guard let weight = Int(sender.text ?? "") else {
            return
        }
        
        self.weight = weight
    }
    
    @IBAction func bmiCalculated(_ sender: UIButton) {
        let bmi: Double = Double(weight) / (Double(height) / 100.0) / (Double(height) / 100.0)
        
        print("\(bmi)")
        let vc = BMIViewController()
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "bmiViewController") as? BMIViewController else { return }
        
        vc.setBmi(bmi)
    
        self.present(vc, animated: true)
    }
}

