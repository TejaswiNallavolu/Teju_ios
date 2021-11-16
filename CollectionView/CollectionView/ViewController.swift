//
//  ViewController.swift
//  CollectionView
//
//  Created by student on 11/11/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath){
        titleOutlet.text = "Movie title: \(movies[index.row].title)"
        YearReleasedOutlet.text = "Year Released: \(movies[index.row].releasedYear)"
        RatingOutlet.text = "Rating: \(movies[index.row].movieRating)"
        BoxOfficeOutlet.text = "Box Office: \(movies[index.row].boxOffice)"
    }
    

    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    @IBOutlet weak var YearReleasedOutlet: UILabel!
    @IBOutlet weak var RatingOutlet: UILabel!
    @IBOutlet weak var BoxOfficeOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }


}


