//
//  ViewController.swift
//  Nallavolu_ConvertTemperature
//
//  Created by student on 11/4/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempTextField: UITextField!
    
    @IBOutlet weak var convertButton: UIButton!
    var temp : Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func convertButtonPressed(_ sender: Any) {
        let text = tempTextField.text!
        temp = Double(text)
        convertButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "convertTemp"{
            let destination = segue.destination as! ResultViewController
            destination.temp = temp
        }
        
    }
    
    @IBAction func editingChanged(_ sender: Any) {
    
  
        if tempTextField.text?.isEmpty == true{
            convertButton.isEnabled = false
        }
        else{
            convertButton.isEnabled = true
        }
        let isInt = Int(tempTextField.text!)
        if isInt != nil{
            convertButton.isEnabled = true
        }
        else{
            convertButton.isEnabled = false
        }
        
    }
}

