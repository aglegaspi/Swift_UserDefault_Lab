//
//  ViewController.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monthPicker: UIPickerView!
    
    var chosenMonth: String? {
        didSet {
            monthPicker.
            print(chosenMonth)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthPicker.dataSource = self
        monthPicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 12
        }
        if component == 1 {
            return 31
        }
        if component == 2 {
            return 101
        } else {
            return 3
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
            return "\(months[row])"
        }
        if component == 1 {
            let days = Array(1...31)
            return "\(days[row])"
        }
        if component == 2 {
            return "\(1919 + row)"
        } else {
            return "Second \(row)"
        }
        
    }
}
