//
//  View3.swift
//  Project 2
//
//  Created by Minh Ly on 11/5/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class View3: UIViewController {

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var continue3: UIButton!
    var components: DateComponents!
    var targetDate: Date!
    override func viewDidLoad() {
        super.viewDidLoad()
        initDatePicker()
        components = DateComponents(calendar: .current, year: 2019, month: 12, day: 25)
        targetDate = components.date
        stateCheck()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func datePickerChange(_ sender: UIDatePicker) {
        stateCheck()
    }
    
    func initDatePicker(){
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.date = Date()
    }
    
    func stateCheck(){
        if(Calendar.current.isDate(datePicker.date, inSameDayAs: targetDate!)){
            continue3.isEnabled = true
            spinner.stopAnimating()
        }
        else{
            continue3.isEnabled = false
            spinner.startAnimating()
        }
        
    }
}

