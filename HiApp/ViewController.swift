//
//  ViewController.swift
//  HiApp
//
//  Created by Nallavolu,Tejaswi Reddy on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displaylabel: UILabel!
    
    @IBAction func Submitbutton(_ sender: Any) {
        var ipText = InputText.text!
        displaylabel.text = "Hello, \(ipText)!"
    }
}

