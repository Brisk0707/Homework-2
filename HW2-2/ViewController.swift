//
//  ViewController.swift
//  HW2-2
//
//  Created by Борис Крисько on 7/26/19.
//  Copyright © 2019 Borys Krisko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var viewArea: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewArea.backgroundColor = UIColor(red: CGFloat(1/255), green: CGFloat(255/255), blue: CGFloat(1/255), alpha: 1)
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        redTextField.delegate = self
        redTextField.returnKeyType = .done
        
        greenTextField.delegate = self
        greenTextField.returnKeyType = .done
        
        blueTextField.delegate = self
        blueTextField.returnKeyType = .done

        self.view.addSubview(redTextField)
        self.view.addSubview(blueTextField)
    }

    
    func textFieldShouldReturn(_ blueTextField: UITextField) -> Bool
    {
        blueTextField.resignFirstResponder()
        blueLabel.text = blueTextField.text
        return true
    }
    
    
    
    

    @IBAction func redSliderChanged(_ sender: Any) {
        viewArea.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
        redLabel.text = String(round(redSlider.value*100)/100)
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
        viewArea.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value / 255), alpha: 1)
        greenLabel.text = String(round(greenSlider.value*100)/100)
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
        viewArea.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1)
        blueLabel.text = String(round(blueSlider.value*100)/100)
    }
}

