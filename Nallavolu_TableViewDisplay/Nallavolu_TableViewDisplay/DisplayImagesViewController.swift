//
//  DisplayImagesViewController.swift
//  Nallavolu_TableViewDisplay
//
//  Created by student on 11/18/21.
//

import UIKit

class DisplayImagesViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageName = ""
    var itemName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(imageName)
        imageView.image = UIImage(named: "\(imageName)")
    }
    
    @IBAction func getInfo(_ sender: Any) {
        
        if itemName == "Tattoos"{
            displayLabel.text = "A mark, figure, design, or word intentionally fixed or placed on the skin. It is indelible and created by insertion of pigment under the skin. If temporary Tattoo is applied to the skin, resembles a permanent tattoo, and usually lasts for a few days to several weeks."
        }
        else if itemName == "Foods"
        {
            displayLabel.text = "Some well known and loved foods in South India include Hyderabadi chicken Dum biryani, Kulambu (South Indian fish curry), Dosa,Andhra Thali(being my most favourite food all the time) and Rasam(Yummy & Healthy)."
        }
        else{
            displayLabel.text = "Cosmetics add more attractive look when applied, they are applied to our body to clean it and change the way we look. General cosmetics include lipstick, kajal, eyeshadow, foundation, perfumes. There are wide range of companies that manufacture and sale cosmetics."
        }
    }
    
    

}
