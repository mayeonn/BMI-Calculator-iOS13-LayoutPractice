//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        height.text = String(format: "%.2fm", sender.value)
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        weight.text = String(format: "%dkg", Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let h = heightSlider.value
        let w = weightSlider.value
        print(w/pow(h,2))
    }
}

