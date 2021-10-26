//
//  ViewController.swift
//  MultipleControllersDemo
//
//  Created by student on 10/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
       
       
       @IBOutlet weak var DiscountRateOutlet: UITextField!
       
       var priceAfterDiscount = 0.0
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    @IBAction func ClacDiscountPressed(_ sender: UIButton) {
           //Read the data from the textfields
           let amount = Double(AmountOutlet.text!)
           print(amount!)
           
        let discRate = Double(DiscountRateOutlet.text!)
                
                print(discRate!)
     
         priceAfterDiscount = amount!-(amount! * (discRate!/100))
        print(priceAfterDiscount)
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"
        {
            //assign ResultViewController as destination
            let destination = segue.destination as! ResultViewController
            destination.amount = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            destination.finalPrice = String(priceAfterDiscount)
        }
    }
}
