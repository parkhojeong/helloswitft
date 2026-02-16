//
//  ViewController.swift
//  1FirstNewApp
//
//  Created by hj on 2/16/26.
//

import UIKit
import AVFAudio
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    var leftTime : Int = 0
    
    var timer: Timer?
    var player: AVAudioPlayer?
    
    func startRepeatingTask() {
            timer?.invalidate()
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
                self?.taskToRun()
            }
    }
    
    func taskToRun() {
        guard leftTime > 0 else {
            stopTimer()
            configureUI()
            AudioServicesPlaySystemSound(1016)
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            return;
        }
        
        leftTime -= 1
        
        slider.setValue(Float(leftTime)/60, animated: true)
        mainLabel.text = "\(leftTime) seconds"
    }
    
    func stopTimer() {
            timer?.invalidate()
            timer = nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        mainLabel.text = "select time"
        initSliderValue()
    }


    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value*60)
        leftTime = sliderValue
        mainLabel.text = "\(sliderValue) seconds"
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startRepeatingTask()
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        configureUI()
        stopTimer()
        leftTime = 0
    }
    
    func initSliderValue() {
        slider.setValue(0.5, animated: true)
    }
}

