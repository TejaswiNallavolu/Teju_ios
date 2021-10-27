//
//  ViewController.swift
//  Nallavolu_WordGuess
//
//  Created by student on 10/23/21.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet var wordsGuessedLabel: UILabel!
        
        @IBOutlet weak var wordsRemainingLabel: UILabel!
        
        
        @IBOutlet weak var wordsMissedLabel: UILabel!
        
        @IBOutlet weak var totalWordsLabel: UILabel!
        @IBOutlet weak var userGuessLabel: UILabel!
        
        @IBOutlet weak var guessButton: UIButton!
    
        @IBOutlet weak var playAgainButton: UIButton!
        
        
        @IBOutlet weak var guessLetterField: UITextField!
        
        
        @IBOutlet weak var hintLabel: UILabel!

        @IBOutlet weak var guessCountLabel: UILabel!
        
       
        @IBOutlet weak var myImageView: UIImageView!
        
        var wordsArray = [ ["Mac","A costly cosmetic brand."],
                           ["Audi","A car brand which has 4 rings"],
                           ["McDonalds","ILet's Eat Out! -i'm lovin' it."],
                            ["Starbucks","You're a sip away from GOLD"],
                            ["Snapchat","App-Life's more fun when you live in the moment."]
        ]
    var imagesArray = ["Mac","Audi","McDonalds","Starbucks","Snapchat"]
        var wordsRemaining:Int=0
        var currentWord = 0
        var lettersGuessed =  ""
        var wordGussedAsOfNow = ""
        var wordsGuessed = 0
        var maxNumOfWrongGuesses = 10
        var wronguesses = 0
        var wordsMissed = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            guessButton.isEnabled = false
            playAgainButton.isHidden = true
            wordsRemaining = wordsArray.count
            myImageView.isHidden = true
            updateLabels()
            guessCountLabel.text = "You've Made \(wronguesses) Guesses"
            userGuessLabel.text = ""
            updateGuessingLetterWord(currentWord)
        }
        @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
    //        print("in")
            guessButtonAction()
        
        }
        func guessButtonAction(){
            guessCountLabel.isHidden = false
            wordGussedAsOfNow =  ""
            userGuessLabel.text = ""
            
            lettersGuessed += guessLetterField.text!.uppercased()
            for letter in wordsArray[currentWord][0].uppercased(){
                if lettersGuessed.contains(letter) {
                    wordGussedAsOfNow += "\(letter)"
                    
                }else{
                    wordGussedAsOfNow += "_ "
                }
            }
            guessLetterField.resignFirstResponder()
            print(wordGussedAsOfNow)
            userGuessLabel.text! = wordGussedAsOfNow
            guessLetterField.text = ""
            disableGuessButton()
            wronguesses += 1
            
            updateGuesses()
        
        }
        
        @IBAction func playAgainButtonPressed(_ sender: Any) {
            currentWord += 1
            myImageView.isHidden = true
            guessCountLabel.text = "You have made \(wronguesses) guesses"
            if currentWord == wordsArray.count{

                currentWord = 0
                wordsGuessed = 0
                wordsRemaining = 0
                wordsMissed = 0
                updateGuessingLetterWord(currentWord)
            }else{
                
                updateGuessingLetterWord(currentWord)
            }
            updateLabels()
            
        }
        func updateGuesses() {
            
            if wordGussedAsOfNow == wordsArray[currentWord][0].uppercased(){
                myImageView.isHidden =  false
                wordsGuessed += 1
                if currentWord == wordsArray.count-1{
                    guessCountLabel.text = "Congratulations, You are done, Please start over again"
                    myImageView.image = UIImage(named:imagesArray[currentWord])
                    animate()
                }else{
                    
                    
                    guessCountLabel.text = "You've got it! You took \(wronguesses) guesses to get the word"
                    myImageView.image = UIImage(named:imagesArray[currentWord])
                    animate()
                }
                wordsGuessedLabel.text! = "Words Guessed: \(wordsGuessed)"
                wordsRemainingLabel.text! = "Words Remaining: \(wordsArray.count - wordsGuessed)"
                playAgainButton.isHidden = false
                guessLetterField.isEnabled = false
                
                
            }else{
                guessCountLabel.text = "You have made \(wronguesses) guesses"
                
            }
            
            if wronguesses == maxNumOfWrongGuesses {
                myImageView.isHidden =  false
                if currentWord == wordsArray.count {
                    print(currentWord)
                    guessCountLabel.text = "Congratulations, You are done, Please start over again"
                    myImageView.image = UIImage(named:imagesArray[currentWord])
                    animate()
                }else{
    //                print(currentWord)
                    guessCountLabel.text = "You are out of guesses. Try again?"
                    myImageView.image = UIImage(named:imagesArray[currentWord])
                    animate()
                    wordsMissed += 1
                    disableGuessButton()
                    playAgainButton.isHidden = false
                    guessLetterField.isEnabled = false
                    wordsMissedLabel.text = "Words Missed: \(wordsMissed)"
                    wronguesses = 0
                }
            }
            
            
        }
        
        func animate(){
            let originalImageFrame = myImageView.frame
            let imageWidthShrink: CGFloat = 20
            let imageHeightShrink: CGFloat = 20
            let smallerImageFrame = CGRect(
                x: myImageView.frame.origin.x + imageWidthShrink,
                y: myImageView.frame.origin.y + imageHeightShrink,
                width: myImageView.frame.width - (imageWidthShrink * 2),
                height: myImageView.frame.height - (imageHeightShrink * 2))
            
            myImageView.frame = smallerImageFrame
                
                UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: [.curveEaseIn], animations: {
                    self.myImageView.frame = originalImageFrame
                })
        }
        
        func disableGuessButton(){
            if guessLetterField.text!.count>0{
                guessButton.isEnabled = true
                let lastCharacter = guessLetterField.text!.last
                guessLetterField.text = String(lastCharacter!).trimmingCharacters(in: .whitespaces)
            }else{
                guessButton.isEnabled = false
            }
        }
    
    @IBAction func guessLetterWordEdited(_ sender: UITextField) {
    
            disableGuessButton()
        }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        guessButtonAction()
    }
    
        
        func updateLabels(){
            wordsMissedLabel.text! = "Words Missed: \(wordsMissed)"
            wordsGuessedLabel.text! = "Words Guessed: \(wordsGuessed)"
            wordsRemainingLabel.text! = "Words Remaining: \(wordsArray.count - wordsGuessed)"
            totalWordsLabel.text! = "Words in Game:  \(wordsArray.count)"
        }
        
        func updateGuessingLetterWord(_ currentNumber:Int){
            userGuessLabel.text = ""
            
            for _ in 0..<wordsArray[currentNumber][0].count {
                userGuessLabel.text! += "_ "
            }
            hintLabel.text = "HINT: \(wordsArray[currentNumber][1])"
            lettersGuessed = ""
            playAgainButton.isHidden = true
            guessLetterField.isEnabled = true
            wronguesses = 0
            
            guessCountLabel.text = "You have made \(wronguesses) guesses"
            //        guessCountLabel.text! +=  "\nCongratulations, You are done, Please start over again"
            //        }
            
        }
        }
