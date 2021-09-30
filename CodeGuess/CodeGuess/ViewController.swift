//
//  ViewController.swift
//  CodeGuess
//
//  Created by student on 9/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DisplayLabel: UILabel!
        
        
        @IBOutlet weak var HintLabel: UILabel!
        
        
        @IBOutlet weak var enterLetter: UITextField!
        
        
        @IBOutlet weak var CheckButton: UIButton!
        
        
        @IBOutlet weak var statusLabel: UILabel!
        
        
        @IBOutlet weak var PlayAgain: UIButton!
        
       var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"]]
    var count = 0;
        var word = ""
        var lettersGuessed = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CheckButton.isEnabled = false;
                word = words[count][0]
                DisplayLabel.text = ""
                for letter in word{
                    DisplayLabel.text! += "- "
                }
                HintLabel.text = "Hint: "+words[count][1]
                statusLabel.text = ""
            }

            @IBAction func CheckButtonClicked(_ sender: Any) {
                //
                var letter = enterLetter.text!
                lettersGuessed = lettersGuessed + letter
                 var revealedWord = ""
                for l in word{
                    if lettersGuessed.contains(l){
                        revealedWord += "\(l)"
                    }
                    else{
                        revealedWord += "_ "
                    }
                }
                DisplayLabel.text = revealedWord
                enterLetter.text = ""
                
                if DisplayLabel.text!.contains("_") == false{
                    PlayAgain.isHidden = false;
                    CheckButton.isEnabled = false;
                }
            }
            
            
            @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
                PlayAgain.isHidden = true
                //clear the label
                lettersGuessed = ""
                count += 1
                if count == words.count{
                    
                    statusLabel.text = "Congruations! You are done with the game!"
                }
                else{
                word = words[count][0]
                HintLabel.text = "Hint: "
                HintLabel.text! += words[count][1]
                CheckButton.isEnabled = true
                
                DisplayLabel.text = ""
                updateUnderscores()
                }
            }
    @IBAction func enterLabelChanged(_ sender: UITextField) {
        var textEnterd = enterLetter.text!;
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        enterLetter.text = textEnterd
        
        print(textEnterd)
        
        if textEnterd.isEmpty{
            CheckButton.isEnabled = false
        }
        else{
            CheckButton.isEnabled = true
        }
    }
    
            
            
            func updateUnderscores(){
                for letter in word{
                    DisplayLabel.text! += "- "
                }
            }
            
            
        }

