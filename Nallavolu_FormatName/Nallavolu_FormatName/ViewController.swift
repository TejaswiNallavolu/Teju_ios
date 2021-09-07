//
//  ViewController.swift
//  Nallavolu_FormatName
//
//  Created by Nallavolu,Tejaswi Reddy on 9/7/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var displayLabel: UILabel!
   
    @IBAction func onClickOfSubmit(_ sender: Any) {
        displayLabel.text = " \(lastNameTextField.text!), \(firstNameTextField.text!) "
    }
    
    @IBAction func onClickOfReset(_ sender: Any) {
        firstNameTextField.text = " "
        lastNameTextField.text = " "
        displayLabel.text = " "
        firstNameTextField.becomeFirstResponder()
    }
 
    

}

