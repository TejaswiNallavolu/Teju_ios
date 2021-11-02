//
//  ResultViewCotrollerViewController.swift
//  TableView
//
//  Created by student on 11/2/21.
//

import UIKit

class ResultViewCotrollerViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = "The product is \((product?.productName)!) and it belongs to \((product?.productCategory)!)."
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
