//
//  ViewController.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedMonth = 0
    var selectedDay = 0
    var selectedYear = 0
    
    var horoscope: String = "" {
        didSet {
            UserDefaultsWrapper.manager.store(horoscope: horoscope)
        }
    }
    
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialValuesFromUserDefaults()
        print(horoscope)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func birthdaySelected(_ sender: UIDatePicker) {
        
        let selectedDate = sender.date
        let calendar = Calendar.current
        let month = calendar.component(.month, from: selectedDate)
        selectedMonth = month
        let day = calendar.component(.day, from: selectedDate)
        selectedDay = day
        let year = calendar.component(.year, from: selectedDate)
        selectedMonth = year
        
        switch month {
        case 1: // Jan
            if day < 21 {
                print("Capricorn")
                horoscope = "Capricorn"
            }
            if day > 20 {
                print("Aquarius")
                horoscope = "Aquarius"
            }
        case 2: //Feb
            if day < 20 {
                print("Aquarius")
                horoscope = "Aquarius"
            }
            if day > 19 {
                print("Pisces")
                horoscope = "Pisces"
            }
        case 3: //Mar
            if day < 21 {
                print("Pisces")
                horoscope = "Pisces"
            }
            if day > 20 {
                print("Aries")
                horoscope = "Aries"
            }
        case 4: //Apr
            if day < 21 {
                print("Aries")
                horoscope = "Aries"
            }
            if day > 20 {
                print("Taurus")
                horoscope = "Taurus"
            }
        case 5: //May
            if day < 22 {
                print("Taurus")
                horoscope = "Taurus"
            }
            if day > 21 {
                print("Gemini")
                horoscope = "Gemini"
            }
        case 6: //Jun
            if day < 22 {
                print("Gemini")
                horoscope = "Gemini"
            }
            if day > 21 {
                print("Cancer")
                horoscope = "Cancer"
            }
        case 7: //Jul
            if day < 23 {
                print("Cancer")
                horoscope = "Cancer"
            }
            if day > 22 {
                print("Leo")
                horoscope = "Leo"
            }
        case 8: //Aug
            if day < 23 {
                print("Leo")
                horoscope = "Leo"
            }
            if day > 22 {
                print("Virgo")
                horoscope = "Virgo"
            }
        case 9: //Sep
            if day < 23 {
                print("Virgo")
                horoscope = "Virgo"
            }
            if day > 22 {
                print("Libra")
                horoscope = "Libra"
            }
        case 10: //Oct
            if day < 23 {
                print("Libra")
                horoscope = "Libra"
            }
            if day > 22 {
                print("Scorpio")
                horoscope = "Scorpio"
            }
        case 11: //Nov
            if day < 23 {
                print("Scorpio")
                horoscope = "Scorpio"
            }
            if day > 22 {
                print("Saggitarius")
                horoscope = "Saggitarius"
            }
        case 12: //Dec
            if day < 23 {
                print("Saggitarius")
                horoscope = "Saggitarius"
            }
            if day > 22 {
                print("Capricorn")
                horoscope = "Capricorn"
            }
        default:
            //return "No Month Selected"
            print("no month selected")
        }
    }
    
    private func setInitialValuesFromUserDefaults() {
        if let storedHoroscope = UserDefaultsWrapper.manager.getHoroscope() {
            horoscope = storedHoroscope
        }
    }
}
