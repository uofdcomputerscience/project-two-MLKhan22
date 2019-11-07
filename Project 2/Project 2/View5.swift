//
//  View5.swift
//  Project 2
//
//  Created by Minh Ly on 11/6/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class View5: UIViewController {
    
    @IBOutlet weak var goalText: UILabel!
    @IBOutlet weak var timeText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let timeEnd = Date()
        let difference = Calendar.current.dateComponents([.second], from: View1.timeStart, to: timeEnd).second!
        goalText.text = "Goal Reached!"
        timeText.text = "Your Time: " + String(difference) + " seconds"
    }
}
