//
//  View2.swift
//  Project 2
//
//  Created by Minh Ly on 11/5/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class View2: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var continue2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initStepper()
        initSlider()
        stateCheck()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        stepperLabel.text = String(Int(sender.value))
        stateCheck()
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        sliderLabel.text = String(Int(sender.value))
        stateCheck()
    }
    
    func stateCheck(){
        if(Int(slider.value) == 5 && Int(stepper.value) == 5){
            continue2.isEnabled = true
        }
        else{
            continue2.isEnabled = false
        }
    }
    
    func initStepper(){
        stepper.value = 0
        stepperLabel.text = String(Int(stepper.value))
        stepper.minimumValue = 0
        stepper.maximumValue = 10
    }
    
    func initSlider(){
        slider.value = 1
        sliderLabel.text = String(Int(slider.value))
        slider.minimumValue = 1
        slider.maximumValue = 10
    }
}
