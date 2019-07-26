//
//  ViewController.swift
//  HW2-2
//
//  Created by Борис Крисько on 7/26/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewArea: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func redSliderChanged(_ sender: Any) {
        viewArea.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        redTextField.text = String(redSlider.value)
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
    }
}

