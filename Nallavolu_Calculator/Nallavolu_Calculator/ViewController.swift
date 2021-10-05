//
//  ViewController.swift
//  Nallavolu_Calculator
//
//  Created by student on 9/27/21.
//

import UIKit

    class ViewController: UIViewController {

      
        @IBOutlet weak var resultlabel: UILabel!
           
           var number1=""
           var number2=""
           var result=""
           var operation=""
           var opChanged = false
           var currentNumber2 = ""
           var inChainmode = false
           override func viewDidLoad() {
               super.viewDidLoad()
               // Do any additional setup after loading the view.
           }
           
           @IBAction func clear(_ sender: UIButton) {
               number2 = ""
            resultlabel.text = ""
           }
           
           @IBAction func swap(_ sender: UIButton) {
               
               //        print("The nsns \(number1)")
               if number1 != "" {
                   
                   resultlabel.text = "-" + resultlabel.text!
                   number1 = "\(resultlabel.text!)"
                   
                   print("number 1 is \(number1)")
                   print("number 2 is \(number2)")
               }
               else{
                   resultlabel.text = "-" + resultlabel.text!
                   number2 = "\(resultlabel.text!)"
                   print("number 1 is \(number1)")
                   print("number 2 is \(number2)")
               }
               
           }
           @IBAction func divide(_ sender: UIButton) {
               let temp = calculate(operation)
               operation = "/"
               resultlabel.text = (temp != "") ? resultFormatter(temp) : ""
               if temp != "" {
                   //            inChainmode = true
                   if number2 != ""{
                       inChainmode = true
                       //            number1 = temp
                       if opChanged {
                           result = String(Double(temp)! / Double(number2)!)
                           print(result)
                           if result == "inf"{
                               resultlabel.text! = "Error"
                           }else{
                               resultlabel.text! = resultFormatter(result)
                           }
                       }
                   }
               }
               opChanged = true
               
           }
           @IBAction func multiply(_ sender: UIButton) {
               let temp = calculate(operation)
               print("temp is \(temp)")
               operation = "*"
               currentNumber2=""
               resultlabel.text = (temp != "") ? resultFormatter(temp) : ""
               //        number1=temp;
               //        if temp != ""{
               //            number2=""
               //
               //        }
               opChanged=true
               
               
           }
           
           @IBAction func minus(_ sender: UIButton) {
               let temp = calculate(operation)
               operation = "-"
               resultlabel.text = (temp != "") ? resultFormatter(temp) : ""
               if temp != "" {
                   //            inChainmode = true
                   if number2 != ""{
                       inChainmode = true
                       currentNumber2 = number2;
                       if opChanged {
                           result = String(Double(temp)! - Double(number2)!)
                           resultlabel.text! = resultFormatter(result)
                       }
                   }
               }
               opChanged = true
               
           }
           @IBAction func plus(_ sender: UIButton) {
               let temp = calculate(operation)
               print("temp is \(temp)")
               operation = "+"
               currentNumber2=""
               resultlabel.text = (temp != "") ? resultFormatter(temp) : ""
               //        number1=temp;
               //        if temp != ""{
               //            number2=currentNumber2
               //        }
               opChanged=true
               
           }
           @IBAction func equals(_ sender: UIButton) {
               var res = ""
               switch operation {
               case "+":
                   
                   if currentNumber2 != "" {
                       res = String(Double(number1)! + Double(currentNumber2)!)
                       resultlabel.text = resultFormatter(res)
                        number2 = currentNumber2
                   }else{
                       res = String(Double(number1)! + Double(number2)!)
                       resultlabel.text = resultFormatter(res)
                   }
                   number1 = res
                   
                   break
               case "*":
                   if currentNumber2 != "" {
                       res = String(Double(number1)! * Double(currentNumber2)!)
                       resultlabel.text = resultFormatter(res)
                       //                number2 = ""
                   }else{
                       res = String(Double(number1)! * Double(number2)!)
                       resultlabel.text = resultFormatter(res)
                   }
                   number1 = res
                   
                   break
               case "-":
                   if currentNumber2 != "" {
                       res = String(Double(number1)! - Double(currentNumber2)!)
                       resultlabel.text = resultFormatter(res)
                       //                number2 = ""
                   }else{
                       res = String(Double(number1)! - Double(number2)!)
                       resultlabel.text = resultFormatter(res)
                   }
                   number1 = res
                   //            number2 = ""
                   break
               case "/":
                   if resultlabel.text == "Error"{
                       clearAll()
                   }else{
                       if currentNumber2 != "" {
                           res = String(Double(number1)! / Double(currentNumber2)!)
                           if res == "inf"{
                               resultlabel.text! = "Error"
                               return
                           }else{
                               resultlabel.text = resultFormatter(res)
                               //                        number2 = ""
                           }
                       }else{
                           res = String(Double(number1)! / Double(number2)!)
                           if res == "inf"{
                               resultlabel.text! = "Error"
                               return
                           }else{
                               resultlabel.text = resultFormatter(res)
                           }
                       }
                       number1 = res
                       //                number2 = ""
                   }
                   break
               default:
                   print("Nothing")
               }
               
           }
           @IBAction func sqaureRoot(_ sender: UIButton) {
               if resultlabel.text == "" || resultlabel.text == "0"{
                   return
               }
               let numberRoot = resultlabel.text
               resultlabel.text = resultFormatter(String(Double(numberRoot!)!.squareRoot()))
               number1 = resultlabel.text!
               number2 = ""
               
           }
           @IBAction func button9(_ sender: UIButton) {
               setData("7")
           }
           @IBAction func button8(_ sender: UIButton) {
               setData("8")
               
           }
           @IBAction func button7(_ sender: UIButton) {
               setData("9")
           }
           @IBAction func button6(_ sender: UIButton) {
               setData("4")
           }
           @IBAction func button5(_ sender: UIButton) {
               setData("5")
           }
           @IBAction func button4(_ sender: UIButton) {
               setData("6")
           }
           @IBAction func button3(_ sender: UIButton) {
               setData("1")
           }
           @IBAction func button2(_ sender: UIButton) {
               setData("2")
           }
           @IBAction func button1(_ sender: UIButton) {
               setData("3")
           }
           @IBAction func button0(_ sender: UIButton) {
               setData("0")
           }
           @IBAction func decimal(_ sender: UIButton) {
               setData(".")
           }
           @IBAction func allClearButton(_ sender: UIButton) {
               clearAll()
               
           }
           func clearAll(){
               number2 = ""
               number1 = ""
               opChanged = false
               operation = ""
               currentNumber2 = ""
               resultlabel.text = "0"
               resultlabel.textColor = .red
               inChainmode=false
           }
           
           func setData(_ number: String){
               if resultlabel.text == "0"{
                   resultlabel.text = ""
                   resultlabel.textColor = .white
               }
               if !opChanged {
                   resultlabel.text! += number
                   number1 += number
               }else{
                   print(inChainmode)
                   if !inChainmode {
                       resultlabel.text! += number
                       number2 += number
                   }else {
                       resultlabel.text = ""
                       resultlabel.text! += number
                       number2 += number
                   }
               }
           }
           
           func calculate(_ operation:String)->String {
               print("\(number1),\(number2)")
               if number1 != "" && number2 != ""{
                   if operation == "+"{
                       number1 = String(Double(number1)! + Double(number2)!)
                       currentNumber2 = number2
                       number2 = ""
                       return String(number1)
                       //                return String(Double(number1)! + Double(number2)!)
                   }
                   if operation == "-"{
                       number1 = String(Double(number1)! - Double(number2)!)
                       currentNumber2 = number2
                       number2 = ""
                       return String(number1)
                   }
                   if operation == "*"{
                       number1 = String(Double(number1)! * Double(number2)!)
                       currentNumber2 = number2
                       number2 = ""
                       return String(number1)
                   }
                   if operation == "/"{
                       number1 = String(Double(number1)! / Double(number2)!)
                       currentNumber2 = number2
                       number2 = ""
                       return String(number1)
                   }
               }
               return ""
           }
           
           func resultFormatter(_ result:String)->String {
               let value = Double(result)!
               var resultStr = String(round(value * 100000) / 100000.0)
               
               if resultStr.contains(".0"){
                   resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
               }
               
               return resultStr
           }
           
           
           
       }
