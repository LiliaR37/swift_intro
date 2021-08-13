import UIKit

//Struc vs Class

struct SomeStruct {
    //La definición de la estructura aquí
}
class SomeClass {
    //La definición de la clase aquí
}

//Estructura
struct Resolution {
    var width = 0
    var height = 0
}

//Una clase
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


//Instancias
let someResolution = Resolution()
let someVideoMode = VideoMode()

//Para acceder
print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)


//Usar los inicializadores en estructuras
let vga = Resolution(width: 640, height: 480)

vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)


var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")

print("\(hd.width) x \(hd.height)")


enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

//datos referenciados clases
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
tenEighty

//comparar dos objetos

if tenEighty === alsoTenEighty{ //comparacion diferencia!==
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}




