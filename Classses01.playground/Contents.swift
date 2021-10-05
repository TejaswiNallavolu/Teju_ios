import UIKit

class Movie {var movieName = "The pursuit of happiness"
    var movieTime = 117 //In minutes
    private var movieRating = 8.5 //Out of 10
    
    func setmovieRating(rating:Double){
        movieRating = rating
        }
    func getmovieRating()->Double{
        return movieRating
        }
}
    //a
    let someMovie = Movie()
print("Movie name is:",someMovie.movieName)
var movieRating = someMovie.getmovieRating()
print("Movie has a rating of",movieRating)

//b
someMovie.setmovieRating(rating: 8.0)
print("Movie, \(someMovie.movieName) has a rating of   \(someMovie.getmovieRating())")

//c
var otherMovie = someMovie
otherMovie.movieName = "Forest Grump"
otherMovie.movieTime = 144
print("Movie, \(otherMovie.movieName) is of \(otherMovie.movieTime) minutes long")
print("Movie name: \(someMovie.movieName), Movie length: \(someMovie.movieTime)")

//d
//someMovie = Movie()
otherMovie = Movie()

//e
if otherMovie === someMovie {
print("Both variable and constant refers to the same class Movie")
}else{
    print("Both of them does not refer to the same class")
}

//f
if otherMovie !== someMovie{
print("Both of them does not refer to the same class")
}else{
    print("Both of them refers to the same class Movie")
}


