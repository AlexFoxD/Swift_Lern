import Cocoa
import Darwin

enum cars{
    case Audi
         , BMW
         , Volvo
}




struct Square{
    var length : Int

    func sum(num: Int) {
        print("\(num + num)")
    }
}

var block = Square (length: 10)

block.sum(num: 2)



class Car {
    var model : String = "No model"
    var weight : Float = 0.0
    var speed : Int = 0
    var wheels : Int = 4

    init(model: String, weight: Float, speed: Int, wheels: Int) {
        self.model = model
        self.speed = speed
        self.weight = weight
        self.wheels = wheels
    }

    func info() {
        print ("\(self.model) and speed : \(self.speed)")
    }

    func set (model: String){
        self.model = model
    }

    func set (model: String, speed: Int){
        self.model = model
        self.speed = speed
    }


}


var audi = Car (model: "Audi", weight: 201.5, speed: 325, wheels: 4 )

audi.info()

audi.set(model: "Audi R8", speed: 365)

audi.info()


