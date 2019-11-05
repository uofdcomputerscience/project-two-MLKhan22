//
//  ViewController.swift
//  Project 2
//
//  Created by Minh Ly on 11/4/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class View1: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var switchA: UISwitch!
    @IBOutlet var switchB: UISwitch!
    @IBOutlet var switchC: UISwitch!
    @IBOutlet var switchD: UISwitch!
    @IBOutlet var labelA: UILabel!
    @IBOutlet var labelB: UILabel!
    @IBOutlet var labelC: UILabel!
    @IBOutlet var labelD: UILabel!
    @IBOutlet var continueButton1: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segControlCheck()
        initSwitches()
        switchCheck()
        // Do any additional setup after loading the view.
    }

    @IBAction func segControlDidChangeValue(_ sender: UISegmentedControl) {
        segControlCheck()
    }
    
    @IBAction func switchDidChangeValue(_ sender: UISwitch) {
        sender.isOn.toggle()
        switchCheck()
    }
    
    func segControlCheck(){
        if(segmentedController.selectedSegmentIndex == 0){
            switchA.isHidden = false
            switchB.isHidden = false
            labelA.isHidden = false
            labelB.isHidden = false
            
            switchC.isHidden = true
            switchD.isHidden = true
            labelC.isHidden = true
            labelC.isHidden = true
        }
        if(segmentedController.selectedSegmentIndex == 1){
            switchA.isHidden = true
            switchB.isHidden = true
            labelA.isHidden = true
            labelB.isHidden = true
            
            switchC.isHidden = false
            switchD.isHidden = false
            labelC.isHidden = false
            labelC.isHidden = false
        }
    }
    
    func initSwitches(){
        switchA.isOn = false
        switchB.isOn = false
        switchC.isOn = false
        switchD.isOn = false
    }
    
    func switchCheck(){
        if( switchA.isOn && switchB.isOn && switchC.isOn && switchD.isOn){
            continueButton1.isEnabled = true
        }
        else{
            continueButton1.isEnabled = false
        }
    }
}

