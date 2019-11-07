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
    @IBOutlet var continueButton1: UIButton!
    @IBOutlet weak var stackAB: UIStackView!
    @IBOutlet weak var stackCD: UIStackView!
    
    
    static let timeStart = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(View1.timeStart) // Printing out the time to initialize it
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
            stackAB.isHidden = false
            stackCD.isHidden = true
        }
        if(segmentedController.selectedSegmentIndex == 1){
            stackAB.isHidden = true
            stackCD.isHidden = false
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

