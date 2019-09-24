//
//  ViewController.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var horoscope: String = "" {
        didSet {
            birthdatePicker.reloadInputViews()
        }
    }
    
    @IBOutlet weak var birthdatePicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func birthdaySelected(_ sender: UIDatePicker) {
        
        let inputDate = sender.date
        let calendar = Calendar.current
        let month = calendar.component(.month, from: inputDate)
        let day = calendar.component(.day, from: inputDate)
        
        switch month {
        case 1: // Jan
            if day < 21 {
                print("Capricorn")
                //return "Capricorn"
            }
            if day > 20 {
                print("Aquarius")
                //return "Aquarius"
            }
        case 2: //Feb
            if day < 20 {
                print("Aquarius")
                //return "Aquarius"
            }
            if day > 19 {
                print("Pisces")
                //return "Pisces"
            }
        case 3: //Mar
            if day < 21 {
                print("Pisces")
                //return "Pisces"
            }
            if day > 20 {
                print("Aries")
                //return "Aries"
            }
        case 4: //Apr
            if day < 21 {
                print("Aries")
                //return "Aries"
            }
            if day > 20 {
                print("Taurus")
                //return "Taurus"
            }
        case 5: //May
            if day < 22 {
                print("Taurus")
                //return "Taurus"
            }
            if day > 21 {
                print("Gemini")
                //return "Gemini"
            }
        case 6: //Jun
            if day < 22 {
                print("Gemini")
                //return "Gemini"
            }
            if day > 21 {
                print("Cancer")
                //return "Cancer"
            }
        case 7: //Jul
            if day < 23 {
                print("Cancer")
                //return "Cancer"
            }
            if day > 22 {
                print("Leo")
                //return "Leo"
            }
        case 8: //Aug
            if day < 23 {
                print("Leo")
                //return "Leo"
            }
            if day > 22 {
                print("Virgo")
                //return "Virgo"
            }
        case 9: //Sep
            if day < 23 {
                print("Virgo")
                //return "Virgo"
            }
            if day > 22 {
                print("Libra")
                //return "Libra"
            }
        case 10: //Oct
            if day < 23 {
                print("Libra")
                //return "Libra"
            }
            if day > 22 {
                print("Scorpio")
                //return "Scorpio"
            }
        case 11: //Nov
            if day < 23 {
                print("Scorpio")
                //return "Scorpio"
            }
            if day > 22 {
                print("Saggitarius")
                //return "Saggitarius"
            }
        case 12: //Dec
            if day < 23 {
                print("Saggitarius")
                //return "Saggitarius"
            }
            if day > 22 {
                print("Capricorn")
                //return "Capricorn"
            }
        default:
            //return "No Month Selected"
            print("no month selected")
        }
    }
        


}

