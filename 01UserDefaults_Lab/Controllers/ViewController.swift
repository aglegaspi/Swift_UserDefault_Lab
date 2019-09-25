//
//  ViewController.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var horoscope: Horoscope?
    
    var selectedMonth = 0
    var selectedDay = 0
    var selectedYear = 0
    
    var sunSign: String = "" {
        didSet {
            UserDefaultsWrapper.manager.store(sunSign: sunSign)
        }
    }
    
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialValuesFromUserDefaults()
        loadData()
        print(sunSign)
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
                sunSign = "Capricorn"
            }
            if day > 20 {
                print("Aquarius")
                sunSign = "Aquarius"
            }
        case 2: //Feb
            if day < 20 {
                print("Aquarius")
                sunSign = "Aquarius"
            }
            if day > 19 {
                print("Pisces")
                sunSign = "Pisces"
            }
        case 3: //Mar
            if day < 21 {
                print("Pisces")
                sunSign = "Pisces"
            }
            if day > 20 {
                print("Aries")
                sunSign = "Aries"
            }
        case 4: //Apr
            if day < 21 {
                print("Aries")
                sunSign = "Aries"
            }
            if day > 20 {
                print("Taurus")
                sunSign = "Taurus"
            }
        case 5: //May
            if day < 22 {
                print("Taurus")
                sunSign = "Taurus"
            }
            if day > 21 {
                print("Gemini")
                sunSign = "Gemini"
            }
        case 6: //Jun
            if day < 22 {
                print("Gemini")
                sunSign = "Gemini"
            }
            if day > 21 {
                print("Cancer")
                sunSign = "Cancer"
            }
        case 7: //Jul
            if day < 23 {
                print("Cancer")
                sunSign = "Cancer"
            }
            if day > 22 {
                print("Leo")
                sunSign = "Leo"
            }
        case 8: //Aug
            if day < 23 {
                print("Leo")
                sunSign = "Leo"
            }
            if day > 22 {
                print("Virgo")
                sunSign = "Virgo"
            }
        case 9: //Sep
            if day < 23 {
                print("Virgo")
                sunSign = "Virgo"
            }
            if day > 22 {
                print("Libra")
                sunSign = "Libra"
            }
        case 10: //Oct
            if day < 23 {
                print("Libra")
                sunSign = "Libra"
            }
            if day > 22 {
                print("Scorpio")
                sunSign = "Scorpio"
            }
        case 11: //Nov
            if day < 23 {
                print("Scorpio")
                sunSign = "Scorpio"
            }
            if day > 22 {
                print("Saggitarius")
                sunSign = "Saggitarius"
            }
        case 12: //Dec
            if day < 23 {
                print("Saggitarius")
                sunSign = "Saggitarius"
            }
            if day > 22 {
                print("Capricorn")
                sunSign = "Capricorn"
            }
        default:
            //return "No Month Selected"
            print("no month selected")
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        guard let horoscope = horoscope else {
            return
        }
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let DetailVC = storyboard.instantiateViewController(withIdentifier:"DetailViewController") as! DetailViewController
        DetailVC.horoscope = horoscope
        
        self.navigationController?.pushViewController(DetailVC,animated: true)
    }
    
    private func setInitialValuesFromUserDefaults() {
        if let storedSign = UserDefaultsWrapper.manager.getSunSign() {
            sunSign = storedSign
        }
    }
    
    private func loadData() {
        HoroscopeAPIClient.manager.getHoroscopes { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let success):
                    print(success)
                    self.horoscope = success
                case .failure(let error):
                    print(error)
                }
            }
        }
    }

}
