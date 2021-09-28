//
//  ViewController.swift
//  CourseDisplay
//
//  Created by student on 9/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PrevButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    var imageNumber = 0
    
    
    let courses = [["image0", "44555", "Network Security", "fall"],
                   ["image2", "44643/4443", "Mobile Edge", "spring"],
                   ["image1", "44689", "Data Streaming", "summer"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //previous button should be disabled
        //first element and its details of an array should be displayed
        
        PrevButton.isEnabled = false
        
        //first element and its details of an array should be displayed
        updateData(imgNum: imageNumber)
        
    }
    
    
    @IBAction func PreviousButtonPressed(_ sender: UIButton) {
        
        NextButton.isEnabled = true
        
        //Display images in the reverse direction.
        imageNumber -= 1
        updateData(imgNum: imageNumber)
        
        //previous button should be disabled if the user iterated all the images.
        if imageNumber == 0{
            PrevButton.isEnabled = false;
        }
    }
    
    
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        //previous button should be enabled
        PrevButton.isEnabled = true
        //the next element in an array must be displayed
        imageNumber += 1
        updateData(imgNum: imageNumber)
        
        //if the user reaches the end of array, the next button should be disabled.
        if imageNumber == courses.count-1{
            NextButton.isEnabled = false
        }
    }
    
    func updateData(imgNum: Int){
        ImageDisplay.image = UIImage(named: courses[imgNum][0])
        crsNum.text = courses[imgNum][1]
        crsTitle.text = courses[imgNum][2]
        crsSem.text = courses[imgNum][3]
    }
    

}

