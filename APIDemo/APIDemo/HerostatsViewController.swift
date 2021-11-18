//
//  HerostatsViewController.swift
//  APIDemo
//
//  Created by student on 11/18/21.
//

import UIKit

class HeroStatsViewController: UIViewController {

    @IBOutlet weak var heroNameOutlet: UILabel!
    
    @IBOutlet weak var primaryAttrOutlet: UILabel!
    
    var hero : HeroStats?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        heroNameOutlet.text = hero?.localized_name
        
        primaryAttrOutlet.text = hero?.primary_attr
        
        
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
