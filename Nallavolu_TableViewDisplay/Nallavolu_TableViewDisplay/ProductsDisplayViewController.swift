//
//  ProductsDisplayViewController.swift
//  Nallavolu_TableViewDisplay
//
//  Created by student on 11/18/21.
//

import UIKit

class ProductsDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailsTableView.dequeueReusableCell(withIdentifier: "showProducts", for: indexPath)
        cell.textLabel?.text = resArray[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var detailsTableView: UITableView!
    
    var detailList : String?
    
    var Tattoos = ["Stylish Design", "Dad & Daughter" ,"Cute elephant" ,"Turtle" ,"Flower"]
    var Foods = ["Chicken Biryani","Fish Curry","Andhra Thali","Dosa","Rasam"]
    var Cosmetics = ["Lipstick","Kajal","Eyeshadow","Perfume","Foundation"]
    var resArray = [String]()
    var itemName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        if detailList == "Tattoos"
        {
            resArray = Tattoos
            itemName = "Tattoos"
        }
        else if detailList == "Foods"{
            resArray = Foods
            itemName = "Foods"
        }
        else{
            resArray = Cosmetics
            itemName = "Cosmetics"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "displayImages"{
            let destination = segue.destination as! DisplayImagesViewController
            destination.imageName = resArray[(detailsTableView.indexPathForSelectedRow?.row)!]
            destination.itemName = itemName
        }
    }
    

}

