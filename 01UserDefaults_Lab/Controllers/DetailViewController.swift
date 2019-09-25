//
//  DetailViewController.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var horoscope: Horoscope!
    
    @IBOutlet weak var sunSignLabel: UILabel!
    
    @IBOutlet weak var horoscopeTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sunSignLabel.text = horoscope?.sunsign
        horoscopeTextField.text = horoscope?.horoscope

    }


}
