//
//  View4.swift
//  Project 2
//
//  Created by Minh Ly on 11/5/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class View4: UIViewController{
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var continue4: UIButton!
    
    var data: StateData!
    var target: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        data = StateData()
        target = data.states[0].capital
        self.picker.dataSource = self
        self.picker.delegate = self
        stateCheck()
    }
    
    @IBAction func textChange(_ sender: UITextField) {
        stateCheck()
    }
    
    func stateCheck(){
        if(textField.text?.lowercased() == target.lowercased()){
            continue4.isEnabled = true
        }
        else{
            continue4.isEnabled = false
        }
    }
    
}

extension View4: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.states.count
    }
}

extension View4: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return data.states[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        target = data.states[row].capital
        stateCheck()
    }
}
