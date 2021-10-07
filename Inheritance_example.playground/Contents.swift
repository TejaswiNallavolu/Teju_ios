import UIKit

class Animal{
    var AnimalType : String
    var AnimalName : String
    
    init(AnimalType:String, AnimalName:String){
        self.AnimalType = AnimalType
        self.AnimalName = AnimalName
    }
    func getAnimalType()->String{
        return AnimalType
    }
    func show(){
        print("Show all the Animals")
    }
    func getAnimalDetails()->String{
        return "Animal Type: \(AnimalType), \nAnimal Name: \(AnimalName)"
    }
}

class Dog:Animal{
    var AnimalBreed: String
    init(AnimalBreed:String){
        self.AnimalBreed = AnimalBreed
        super.init(AnimalType: "Pet Animal", AnimalName: "Dog")
    
    }
    override func show() {
    print("Show only Dog details")
    }
    override func getAnimalDetails() -> String {
        return super.getAnimalDetails()+"\nAnimal Breed: \(AnimalBreed)"
    }
    
}
let Dog = Dog(AnimalBreed: "Beagles")
print(Dog.getAnimalDetails())


