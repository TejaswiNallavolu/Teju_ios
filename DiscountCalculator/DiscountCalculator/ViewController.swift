//
//  ViewController.swift
//  DiscountCalculator
//
//  Created by student on 10/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Amount: UITextField!
    @IBOutlet weak var Discount: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func DisplayBtn(_ sender: Any) {
        DisplayLabel.text = String(Double(Amount.text!)! - (Double(Amount.text!)! * Double(Discount.text!)!/100))
    }

   
}
