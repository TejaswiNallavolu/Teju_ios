//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by student on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = Image.frame.minX
        let miny = Image.frame.minY
        print(minx,miny)
        
        let maxx = Image.frame.maxX
        let maxy = Image.frame.maxY
        print(maxx,maxy)
        
        let midx = Image.frame.midX
        let midy = Image.frame.midY
        print(midx,midy)
        
        let w = Image.frame.width
        let h = Image.frame.height
        print(w,h)
        
        
    //change the loction of the imageview to the bottom right corner
        Image.frame.origin.x = 314
        Image.frame.origin.y = 796
        
        //change the loction of the imageview to the bottom left corner
            Image.frame.origin.x = 0
            Image.frame.origin.y = 796
        
        //change the loction of the imageview to the top right corner
            Image.frame.origin.x = 314
            Image.frame.origin.y = 0
        
        //change the loction of the imageview to the top left corner
            Image.frame.origin.x = 0
            Image.frame.origin.y = 0
        
        //change the loction of the imageview to the centre which has to be
        //(414-100/2, 896-100/2)
            Image.frame.origin.x = 157
            Image.frame.origin.y = 398
    }


    @IBAction func ClickButton(_ sender: Any) {
        // when click button is clicked, the width and height is increased by 100.
        var w = Image.frame.width
        w += 100
        var h = Image.frame.height
        h += 100
        // The image view must be in the centre of the screen
        let x = Image.frame.origin.x-50
        let y = Image.frame.origin.y-50
        let imageFrame = CGRect(x: x, y: y, width: w, height: h)
        Image.frame = imageFrame
    }
}

