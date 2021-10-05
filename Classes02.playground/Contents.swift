import UIKit

class Car{
    var carStyle : String
    var carDoors : Int
    var model: String?
    var discountEnabled: Bool
    var price : Double
    
    init(){
        carStyle = "Sedan"
        carDoors = 4
        model = "Honda"
        price = 19999.79
        discountEnabled = false
    }
    init(carStyle:String,carDoors:Int,price:Double,discountEnabled :Bool){
            self.carStyle = carStyle
            self.carDoors = carDoors
            self.price = price
        //self.price' not initialized is found to be an error if the price is not initialized.
            self.discountEnabled = discountEnabled
            }
    func setCarModel(carModel:String){
            self.model = carModel
        }
        
        func getPriceAfterDiscount()->Double{
            if discountEnabled{
                return  self.price - self.price * 0.2
            }else{
                return self.price
            }
        }
    func getCarDetails()->String{
            if model == nil {
                return "Car Style: \(carStyle), Model: NA, Doors: \(carDoors), Discount available: \(discountEnabled)"
            }else{
                return "Car Style: \(carStyle), Model: \(model!), Doors: \(carDoors), Discount available: \(discountEnabled)"
            }
            
        }
    }

//a
let car1 = Car()
let carPrice = car1.getPriceAfterDiscount()

print(car1.getCarDetails())
print("Price after discount:",carPrice)

//b
let car2 = Car(carStyle: "Coupe", carDoors: 2, price: 25780.34, discountEnabled: true)
print(car2.getCarDetails())

//c
car2.setCarModel(carModel: "Dodge")
print(car2.getCarDetails())
    print("Price before discount is:",car2.price)
print("Price after discount is:",car2.getPriceAfterDiscount())









