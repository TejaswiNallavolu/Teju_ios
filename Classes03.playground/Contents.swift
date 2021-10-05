import UIKit

class Circle{
    var radius : Double
    init(radius:Double){
        self.radius = radius
    }
    func getArea()->Double{
        return Double.pi * self.radius * self.radius
    }
    func getPerimeter()->Double{
        return 2 * Double.pi * self.radius
    }
}

let C1 = Circle(radius: 2.5)
print(C1.getArea())
print(C1.getPerimeter())


