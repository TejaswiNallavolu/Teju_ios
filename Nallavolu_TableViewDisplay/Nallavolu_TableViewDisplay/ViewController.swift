//
//  ViewController.swift
//  Nallavolu_TableViewDisplay
//
//  Created by student on 11/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allProducts", for: indexPath)
               cell.textLabel?.text = listArray[indexPath.row]
               return cell
    }
    
    
    

    @IBOutlet weak var tableView: UITableView!
    var listArray = [
        "Tattoos",
        "Foods",
        "Cosmetics"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "showProducts"{
            let destination =  segue.destination as! ProductsDisplayViewController
            destination.detailList = listArray[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}

