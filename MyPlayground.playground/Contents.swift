import Cocoa

struct Dog {
    //MARK: Stored properties
    let breed : String
    let color : String
    var lengthInMetres : Double
    var heightInMetre : Double
    
    //MARK: Computed properties
    var ratioBetweenLengthAndHeight : Double {
        return lengthInMetres / heightInMetre
    }
}
var dogOnLeft = Dog(breed: "", color: "brown",lengthInMetres: 1, heightInMetre: 0.5)
var dogInMiddle = Dog(breed: "", color: "brown", lengthInMetres: 1, heightInMetre: 0.6)
dogInMiddle.ratioBetweenLengthAndHeight
