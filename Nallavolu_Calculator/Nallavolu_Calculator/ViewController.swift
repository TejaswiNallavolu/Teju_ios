//
//  ViewController.swift
//  Nallavolu_Calculator
//
//  Created by student on 9/27/21.
//

import UIKit

    class ViewController: UIViewController {

      
        @IBOutlet weak var laNumberShow: UILabel!
           
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
           
           @IBAction func clearButton(_ sender: UIButton) {
               number2 = ""
           }
           
           @IBAction func swapButton(_ sender: UIButton) {
               
               //        print("The nsns \(number1)")
               if number1 != "" {
                   
                   laNumberShow.text = "-" + laNumberShow.text!
                   number1 = "\(laNumberShow.text!)"
                   
                   print("number 1 is \(number1)")
                   print("number 2 is \(number2)")
               }
               else{
                   laNumberShow.text = "-" + laNumberShow.text!
                   number2 = "\(laNumberShow.text!)"
                   print("number 1 is \(number1)")
                   print("number 2 is \(number2)")
               }
               
           }
           @IBAction func divideButton(_ sender: UIButton) {
               let temp = calTemp(operation)
               operation = "/"
               laNumberShow.text = (temp != "") ? resultFormatter(temp) : ""
               if temp != "" {
                   //            inChainmode = true
                   if number2 != ""{
                       inChainmode = true
                       //            number1 = temp
                       if opChanged {
                           result = String(Double(temp)! / Double(number2)!)
                           print(result)
                           if result == "inf"{
                               laNumberShow.text! = "Error"
                           }else{
                               laNumberShow.text! = resultFormatter(result)
                           }
                       }
                   }
               }
               opChanged = true
               
           }
           @IBAction func multiplyButton(_ sender: UIButton) {
               let temp = calTemp(operation)
               print("temp is \(temp)")
               operation = "*"
               currentNumber2=""
               laNumberShow.text = (temp != "") ? resultFormatter(temp) : ""
               //        number1=temp;
               //        if temp != ""{
               //            number2=""
               //
               //        }
               opChanged=true
               
               
           }
           
           @IBAction func minusButton(_ sender: UIButton) {
               let temp = calTemp(operation)
               operation = "-"
               laNumberShow.text = (temp != "") ? resultFormatter(temp) : ""
               if temp != "" {
                   //            inChainmode = true
                   if number2 != ""{
                       inChainmode = true
                       currentNumber2 = number2;
                       if opChanged {
                           result = String(Double(temp)! - Double(number2)!)
                           laNumberShow.text! = resultFormatter(result)
                       }
                   }
               }
               opChanged = true
               
           }
           @IBAction func plusButton(_ sender: UIButton) {
               let temp = calTemp(operation)
               print("temp is \(temp)")
               operation = "+"
               currentNumber2=""
               laNumberShow.text = (temp != "") ? resultFormatter(temp) : ""
               //        number1=temp;
               //        if temp != ""{
               //            number2=currentNumber2
               //        }
               opChanged=true
               
           }
           @IBAction func equasButton(_ sender: UIButton) {
               var res = ""
               switch operation {
               case "+":
                   
                   if currentNumber2 != "" {
                       res = String(Double(number1)! + Double(currentNumber2)!)
                       laNumberShow.text = resultFormatter(res)
                        number2 = currentNumber2
                   }else{
                       res = String(Double(number1)! + Double(number2)!)
                       laNumberShow.text = resultFormatter(res)
                   }
                   number1 = res
                   
                   break
               case "*":
                   if currentNumber2 != "" {
                       res = String(Double(number1)! * Double(currentNumber2)!)
                       laNumberShow.text = resultFormatter(res)
                       //                number2 = ""
                   }else{
                       res = String(Double(number1)! * Double(number2)!)
                       laNumberShow.text = resultFormatter(res)
                   }
                   number1 = res
                   
                   break
               case "-":
                   if currentNumber2 != "" {
                       res = String(Double(number1)! - Double(currentNumber2)!)
                       laNumberShow.text = resultFormatter(res)
                       //                number2 = ""
                   }else{
                       res = String(Double(number1)! - Double(number2)!)
                       laNumberShow.text = resultFormatter(res)
                   }
                   number1 = res
                   //            number2 = ""
                   break
               case "/":
                   if laNumberShow.text == "Error"{
                       clearAll()
                   }else{
                       if currentNumber2 != "" {
                           res = String(Double(number1)! / Double(currentNumber2)!)
                           if res == "inf"{
                               laNumberShow.text! = "Error"
                               return
                           }else{
                               laNumberShow.text = resultFormatter(res)
                               //                        number2 = ""
                           }
                       }else{
                           res = String(Double(number1)! / Double(number2)!)
                           if res == "inf"{
                               laNumberShow.text! = "Error"
                               return
                           }else{
                               laNumberShow.text = resultFormatter(res)
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
           @IBAction func sqaureRootButton(_ sender: UIButton) {
               if laNumberShow.text == "" || laNumberShow.text == "0"{
                   return
               }
               let numberRoot = laNumberShow.text
               laNumberShow.text = resultFormatter(String(Double(numberRoot!)!.squareRoot()))
               number1 = laNumberShow.text!
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
           @IBAction func buttonDot(_ sender: UIButton) {
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
               laNumberShow.text = "0"
               laNumberShow.textColor = .red
               inChainmode=false
           }
           
           func setData(_ number: String){
               if laNumberShow.text == "0"{
                   laNumberShow.text = ""
                   laNumberShow.textColor = .white
               }
               if !opChanged {
                   laNumberShow.text! += number
                   number1 += number
               }else{
                   print(inChainmode)
                   if !inChainmode {
                       laNumberShow.text! += number
                       number2 += number
                   }else {
                       laNumberShow.text = ""
                       laNumberShow.text! += number
                       number2 += number
                   }
               }
           }
           
           func calTemp(_ operation:String)->String {
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
