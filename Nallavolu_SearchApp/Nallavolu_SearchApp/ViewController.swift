//
//  ViewController.swift
//  Nallavolu_SearchName
//
//  Created by student on 10/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var moreImages: UIButton!
    
    @IBOutlet weak var searchBtn: UIButton!
    
    @IBOutlet weak var moreImgs: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    var array=[["actor1","actor2","actor3","actor4","actor5"],["book1","book2","book3","book4","book5"],
                   ["movie1","movie2","movie3","movie4","movie5"],["webseries1","webseries2","webseries3","webseries4","webseries5"],
                   ["city1","city2","city3","city4","city5"],["notfound"]]
    
    var actor_keywords=["hero","actor","actress","tollywood","hollywood","celebrities","heroine", "protagonists", "actors", "ntr", "morgan freeman", "favourite actor"]
      
      var book_keywords=["books","author","book","novels","chetan bhagat","favouite book"]
      
      var movie_keywords=["movies","movie","favourite movie","film","picture", "poster"]
      
      var webseries_keywords=["webseries","favourite webseries","netflix","prime", "series"]
      
      var city_keywords=["city","cities","famous cities","hyderabad","favourite city", "dream city"]
      

    
    
    
    var topic=0
    var actor:Int!
    var book:Int!
    var movie:Int!
    var webseries:Int!
    var city:Int!
    //let images=["img1","img2","img3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        topicInfoText.text="Hai"
        //   moreImages.isEnabled=false
        moreImages.isHidden=true
        topicInfoText.isHidden=true
        searchBtn.isEnabled=false
        searchBtn.alpha=0.5
        resetButton.isHidden=true
        resultImage.image=UIImage(named: array[5][0])
    }
    
    //if the entered key word does not match with any of the key words from the 5 arrays display the blank image
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        actor=0
        book=0
        movie=0
        webseries=0
        city=0
        moreImages.isHidden=false
        topicInfoText.isHidden=false
        resetButton.isHidden=false
        if(actor_keywords.contains(searchTextField.text!)){
            moreImages.isEnabled=true
            
            resultImage.image=UIImage(named: array[0][actor])
            topic=1
            topicInfoText.text="The one who acts in a play, movie, television show, etc is called an actor. An actor or actress is a person who portrays a character in a performance. These are the some of my favourite protagonists."

            
        }
        else if(book_keywords.contains(searchTextField.text!)){
            moreImages.isEnabled=true
            resultImage.image=UIImage(named: array[1][0])
            topic=2
            topicInfoText.text="A novel or a book is a relatively long work of narrative fiction, typically written in prose and published as a book. These are the most favourite books of mine."
        }
        else if(movie_keywords.contains(searchTextField.text!)){
            moreImages.isEnabled=true
            resultImage.image=UIImage(named: array[2][book])
            topic=3
            topicInfoText.text="A movie is an act or play which can carry different types of emotions and plays a major part in people's lives. Movies are message oriented as there's some moral which can be drawn from it. "

            
        }
        else if(webseries_keywords.contains(searchTextField.text!)){
            moreImages.isEnabled=true
            resultImage.image=UIImage(named: array[3][movie])
            topic=4
            topicInfoText.text="Webseries are one of recent popular show attracting most of the teenagers. My past time activity is watching webseries on netflix and prime. These are my favourite webseries watched so far. "

        }
        else if(city_keywords.contains(searchTextField.text!)){
            moreImages.isEnabled=true
            resultImage.image=UIImage(named: array[4][webseries])
            topic=5
            topicInfoText.text="A city is a large human settled place with defined boundaries whose members work primarily on non-agricultural tasks. These are the cities which are known for their scenic beuties have been my favourites."

        }
        else {
            resultImage.image = UIImage(named: array[5][city])
            moreImages.isHidden=true
            topicInfoText.isHidden=true
            searchBtn.isEnabled=false
            searchBtn.alpha=0.5
        }
        
        
    }
    @IBAction func showMoreImagesBtn(_ sender: UIButton) {
        // if(topicInfoText.tex){
        
        //  }
        if(topic==1){
            actor+=1
            updateData(imgNum: actor)
        }
        if(topic==2){
            
            book+=1
            updateData(imgNum: book)
        }
        if(topic==3){
            
            movie+=1
            updateData(imgNum: movie)
        }
        if(topic==4){
            
            webseries+=1
            updateData(imgNum: webseries)
        }
        if(topic==5){
            
            city+=1
            updateData(imgNum: 2)
        }
        
        
        
    }
    
    func updateData(imgNum: Int){
        if(topic==1){
            
            if  actor >= array[0].count  {
                moreImages.backgroundColor = .gray
                moreImages.isEnabled = false
                
            }else{
                resultImage.image = UIImage(named: array[0][actor])
                
            }
        }
        if(topic==2){
            if(book==array[1].count){
                moreImages.backgroundColor = .gray
                moreImages.isEnabled=false
            }else{
                resultImage.image=UIImage(named: array[1][book])
            }
        }
        if(topic==3){
            if(movie==array[2].count){
                moreImages.backgroundColor = .gray
                moreImages.isEnabled=false
            }else{
                resultImage.image=UIImage(named: array[2][movie])
            }
            
        }
        if(topic==4){
            if(webseries==array[3].count){
                moreImages.backgroundColor = .gray
                moreImages.isEnabled=false
            }else{
                resultImage.image=UIImage(named: array[3][webseries])
            }
        }
        if(topic==5){
            if(city==array[4].count){
                moreImages.backgroundColor = .gray
                moreImages.isEnabled=false
            }else{
                resultImage.image=UIImage(named: array[4][city])
            }
        }
        
    }
    
    
    @IBAction func ResetButtonClicked(_ sender: UIButton) {
        topicInfoText.isHidden=true
        moreImages.isHidden=true
        searchBtn.isEnabled=false
        searchBtn.alpha=0.5
        resetButton.isHidden=true
        resultImage.image=UIImage(named: array[5][0])
        searchTextField.text=""
        
    }
    

    
    
    @IBAction func searchTextFieldChanged(_ sender: UITextField) {
        searchBtn.isEnabled=true
        if(sender.text==""){
            searchBtn.isEnabled=false
            searchBtn.alpha=0.5
    }
    
   }
}

