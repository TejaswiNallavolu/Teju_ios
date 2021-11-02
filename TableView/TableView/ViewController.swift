//
//  ViewController.swift
//  TableView
//
//  Created by student on 11/2/21.
//

import UIKit


class Product{
    var productName : String?
    var productCategory : String?
    init(prodName: String, prodCategory: String){
            self.productName = prodName
            self.productCategory = prodCategory
        }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //we have to populate the cells from the dataSource
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        //Assign the data to the cell from data source(array)
        cell.textLabel?.text = productsArray[indexPath.row].productName
        return cell
        
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    var productsArray = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
       
        let p1 = Product(prodName: "MacbookAir", prodCategory: "Laptop")
        productsArray.append(p1)
        let p2 = Product(prodName: "iPhone", prodCategory: "cellPhone")
        productsArray.append(p2)
        let p3 = Product(prodName: "iPad", prodCategory: "Tablet")
        productsArray.append(p3)
        let p4 = Product(prodName: "iWatch", prodCategory: "watch")
        productsArray.append(p4)
    }
// end viewDidload
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"{
            let destination = segue.destination as! ResultViewCotrollerViewController
            destination.product = productsArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

