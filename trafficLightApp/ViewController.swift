//
//  ViewController.swift
//  trafficLightApp
//
//  Created by Богдан Баскаков on 23/07/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonLable: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.backgroundColor = .red
        redLight.layer.cornerRadius = 65
        redLight.alpha = 0.3
        
        yellowLight.backgroundColor = .yellow
        yellowLight.layer.cornerRadius = 65
        yellowLight.alpha = 0.3
        
        greenLight.backgroundColor = .green
        greenLight.layer.cornerRadius = 65
        greenLight.alpha = 0.3
        
        buttonLable.layer.cornerRadius = 20
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if redLight.alpha == 0.30000001192092896 && yellowLight.alpha == 0.30000001192092896 && greenLight.alpha == 0.30000001192092896 {
            redLight.alpha = 1
            buttonLable.setTitle("Next light", for: .normal)
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            buttonLable.setTitle("Stop", for: .normal)
        } else {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            buttonLable.setTitle("Start", for: .normal)
        }
    }
}

