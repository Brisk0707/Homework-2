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
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                 action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexiblespace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil,
                                            action: nil)
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done,
                                         target: self,
                                         action: #selector(self.doneClicked))
        
        toolbar.setItems([flexiblespace, doneButton], animated: true)
        
        redTextField.inputAccessoryView = toolbar
        greenTextField.inputAccessoryView = toolbar
        blueTextField.inputAccessoryView = toolbar
    }
    
    @IBAction func redSliderChanged(_ sender: Any) {
        actionsWhenSliderChanged()
    }
    @IBAction func greenSliderChanged(_ sender: Any) {
        actionsWhenSliderChanged()
        
    }
    @IBAction func blueSliderChanged(_ sender: Any) {
        actionsWhenSliderChanged()
    }
    
    @objc func dismissKeyboard() {
        actionsWhenInputFromKeyboardOrTap()
        view.endEditing(true)
    }
    
    @objc func doneClicked() {
        actionsWhenInputFromKeyboardOrTap()
        view.endEditing(true)
    }
    
    
    func actionsWhenSliderChanged(){
        viewArea.backgroundColor = UIColor(red: CGFloat(redSlider.value / 255),
                                           green: CGFloat(greenSlider.value / 255),
                                           blue: CGFloat(blueSlider.value / 255),
                                           alpha: 1)
        
        redLabel.text = String(round(redSlider.value * 100) / 100)
        redTextField.text = String(round(redSlider.value * 100) / 100)
        
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        greenTextField.text = String(round(greenSlider.value * 100) / 100)
        
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        blueTextField.text = String(round(blueSlider.value * 100) / 100)
    }
    
    func actionsWhenInputFromKeyboardOrTap() {
        
        if redTextField.text != nil && greenTextField.text != nil && blueTextField.text != nil {
            redSlider.value = Float(redTextField.text!)!
            greenSlider.value = Float(greenTextField.text!)!
            blueSlider.value = Float(blueTextField.text!)!
            
            viewArea.backgroundColor = UIColor(red: CGFloat(Float(redTextField.text!)! / 255),
                                               green: CGFloat(Float(greenTextField.text!)! / 255),
                                               blue: CGFloat(Float(blueTextField.text!)! / 255),
                                               alpha: 1)
            
            redLabel.text = redTextField.text
            blueLabel.text = blueTextField.text!
            greenLabel.text = greenTextField.text!
        }
    }
}
