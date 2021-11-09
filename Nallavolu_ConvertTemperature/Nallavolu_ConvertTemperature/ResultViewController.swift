//
//  ResultViewController.swift
//  Nallavolu_ConvertTemperature
//
//  Created by student on 11/4/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var fahreheitLabel: UILabel!
        
        @IBOutlet weak var kelvinLabel: UILabel!
        
        @IBOutlet weak var textLabel: UILabel!
        
        @IBOutlet weak var imageView: UIImageView!
        var temp : Double?
        var image = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        var tempInFahrenheit =  (temp! * 9/5) + 32
                tempInFahrenheit = tempInFahrenheit * 100
                tempInFahrenheit = (tempInFahrenheit.rounded())/100
                fahreheitLabel.text = "Temperature in Fahrenheit : \(tempInFahrenheit)"
                kelvinLabel.text = "Temperature in Kelvin : \(temp! + 273.15)"
                
                if tempInFahrenheit < 5{
                    textLabel.text = "It’s freezing cold, you’d better take some care of yourself"
                    image = 1
                }
                else if tempInFahrenheit >= 5 && tempInFahrenheit <= 59 {
                    textLabel.text = "It is cold outside. Please put on your winter wear!"
                    image = 2
                }
                else if tempInFahrenheit >= 60 && tempInFahrenheit <= 77{
                    textLabel.text = "There’s nothing but blue skies outside, that's a pleasant weather!"
                    image = 3
                }
                else if tempInFahrenheit >= 78 && tempInFahrenheit <= 95{
                    textLabel.text = "It is hot outside, seems like the summer has started!"
                    image = 4
                }
                else{
                    textLabel.text = "It’s boiling hot, you could fry an egg on the sidewalk."
                    image = 5
                }
                updateImageView()
            }
            
            func updateImageView(){
                imageView.image = UIImage(named: "image\(image)")
                let originalImageFrame = imageView.frame
                let widthShrink: CGFloat = 10
                let heightShrink: CGFloat = 10
                let newFrame = CGRect(
                x: imageView.frame.origin.x + widthShrink,
                y: imageView.frame.origin.y + heightShrink,
                width: imageView.frame.width - widthShrink,
                height: imageView.frame.height - heightShrink)
                imageView.frame = newFrame
                UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0,  animations: {
                    self.imageView.frame = originalImageFrame
                })
            }
            

        }


