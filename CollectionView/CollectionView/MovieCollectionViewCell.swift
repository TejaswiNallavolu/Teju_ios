//
//  MovieCollectionViewCell.swift
//  CollectionView
//
//  Created by student on 11/11/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
   
        
        @IBOutlet weak var imageViewOutlet: UIImageView!
        
        func assignMovie(with movie: Movie){
            imageViewOutlet.image = movie.image
        }
    }

