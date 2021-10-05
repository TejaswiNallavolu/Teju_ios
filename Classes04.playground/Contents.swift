import UIKit

class Automobile{
    var seatingCapacity:Int
    var automobileName: String
    
    init(seatingCapacity:Int,automobileName:String) {
        self.automobileName = automobileName
        self.seatingCapacity = seatingCapacity
    }
    func getSeatingCapacity()->Int{
        return seatingCapacity
    }
    func start(){
        print("Start the automobile with key")
    }
    
    func getAutomobileDetails() -> String{
        return "Automobile Name: \(automobileName),\nSeating Capcity: \(seatingCapacity)"
    }
}
class Car:Automobile{
    var carType:String
    init(carType:String) {
        self.carType = carType
        super.init(seatingCapacity: 5, automobileName: "Car")
    }
    
    override func start() {
        print("Start the car with key or push button")
    }
   
    override func getAutomobileDetails() -> String {
        return super.getAutomobileDetails()+"\nCar type: \(carType)"
    }
}


//1
let car = Car(carType:"Sedan")
car.start()
print(car.getAutomobileDetails())

