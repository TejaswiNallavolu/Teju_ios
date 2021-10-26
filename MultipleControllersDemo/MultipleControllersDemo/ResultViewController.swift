//
//  ResultViewController.swift
//  MultipleControllersDemo
//
//  Created by student on 10/19/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var PriceAfterDiscOutlet: UILabel!
    
    @IBOutlet weak var EnterDiscRateOutlet: UILabel!
    @IBOutlet weak var EnterAmountOutlet: UILabel!
    var amount = ""
        var discRate = ""
        var finalPrice = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
    
            EnterAmountOutlet.text = EnterAmountOutlet.text! + amount
                    
            EnterDiscRateOutlet.text = EnterDiscRateOutlet.text! + discRate
                    
                    PriceAfterDiscOutlet.text = PriceAfterDiscOutlet.text! + finalPrice
    
    
    
    
    
        }
}
