//
//  ViewController.swift
//  APIDemo
//
//  Created by student on 11/18/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "ResuableCell", for: indexPath)
        cell.textLabel?.text  = heroes[indexPath.row].localized_name
        return cell
    }
    
    
    @IBOutlet weak var TableViewOutlet: UITableView!
    var heroes = [HeroStats]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getJsonData {
            self.TableViewOutlet.reloadData()
        }
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ShowStatsSegue"{
            let destination = segue.destination as! HeroStatsViewController
            destination.hero = heroes[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
        
    }
    
    func getJsonData(completed: @escaping() -> ()){
        //Set up the URL
        let url = URL(string : "https://api.opendota.com/api/heroStats");
        
        URLSession.shared.dataTask(with: url!){data,response,error in
            if error == nil{
                do{
                    
                    self.heroes = try JSONDecoder().decode([HeroStats].self, from: data!)
                    DispatchQueue.main.async{
                        completed()
                    }
                }catch{
                    print("error")
                }
            }
        }.resume()
    }
}



