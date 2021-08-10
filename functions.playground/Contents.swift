import UIKit

func greeting(person: String) -> String {
    let greet = "¡Bienvenue, \(person)!"
    return greet
}

greeting(person: "Ricardo Celis")
greeting(person: "Edgar")
greeting(person: "Juan Gabriel")

//Sin parametros de entrada
func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()

//Con parametros
func greeting(person: String, isMale:Bool) -> String {
    if isMale {
        return "Bienvenido Caballero \(person)"
    }else {
        return "Bienvenida señora \(person)"
    }
}

greeting(person: "Andres Perez",isMale: true)
greeting(person: "Olivia Linares", isMale: false)

//Reto
func anotherGreeting(person: String, gender: String, age: Int) -> String {
    switch  (gender, age) {
    case ("m", 0...20):
        return "Hola joven \(person)"
    case ("m", 21...100):
    return "Hola señor \(person)"
    case ("f", 0...20):
    return "Hola señorita \(person)"
    case ("f", 21...100):
    return "Hola señora \(person)"
    default:
        return "none"
    }
  
}
anotherGreeting(person: "Jose Perez", gender: "m", age: 18)
anotherGreeting(person: "Maria Lopez", gender: "f", age: 25)
anotherGreeting(person: "David Lombana", gender: "m", age: 30)
anotherGreeting(person: "Celilia Acosta", gender: "f", age: 16)


/* Mi otra forma de realizarlo pero me parece mejor switch
 func saludos(person: String, gender: String, age: Int) -> String {
     if gender == "m" && age <= 20 {
         return "Hola, señorito \(person)"
     } else if gender == "m" && age > 20 {
         return "Hola señor \(person)"
     } else if  gender == "f" && age <= 20 {
         return "Hola señorita \(person)"
     } else if gender == "f" && age > 20 {
         return "Hola señora  \(person)"
     }else {
         return "Agregue un dato correcto"
     }
     
     
     }
 saludos(person: "Maria", gender: "f", age: 30)
 */

//Valores de Retorno, Optionals y Parámetros de Salida

//Sin retornar algo
func greet2(person:String){
    print("Hola \(person)")
}
 greet2(person: "Andrea Ruiz")

//Cuando devuelve algo
func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}

//No devuelve nada
func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hola que tal")
printWithoutCounting(string: "Hola que tal")

//Por medio de una tupla
func minMax(array:[Int]) -> (min: Int, max: Int){
    
  
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(array: [6,3,-8,3,1,9,5,15,-9])
print("Los valores se hallan entre \(bounds.min) y \(bounds.max)")


//Etiquetas de Params y Variadics

func someFunction(f1 firstParamName: Int, f2 secondParamName:Int = 6){
    //firstParamName variable de tipo Int
       //secondParamName variable de tipo Int
       print(firstParamName + secondParamName)
}

someFunction(f1: 5, f2: 2)
someFunction(f1: 4)

//Con la _ se omite en la funcion y de todas formas es facil de leer
func greeting(_ person: String,from hometown: String) -> String {
    return "Hola \(person) un placer que no visites desde \(hometown)"
}
greeting("Juan Gabriel", from: "Mallorca")


//Variable variadica
func mean(_ numbers: Double...) -> Double {
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5)

//Reto

func meanGeometric(_ numbers: Double...) -> Double {
    var total: Double = 1
    
    for number in numbers {
        total *= number
    }
    return pow(total, (1/Double(numbers.count)))
}

meanGeometric(3,3,3)

//Parametros de entrada y salida
func swapTwoInts(_ a: inout Int,_ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("someInt vale \(someInt) y otherInt vale \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt vale \(someInt) y otherInt vale \(otherInt)")

//uso de funciones con otras
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a+b
} //(Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int ) -> Int{
    return a*b
}//(Int, Int) -> Int

func printHW(){
    print("Hello World")
} //() -> Void

var mathFunction: (Int, Int) -> Int = multiplyTwoInts
mathFunction(4,5)



func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Resultado: \(mathFunction(a,b))")
}

printMathResult(multiplyTwoInts, 5, 9)

//Funciones dentro de otras funciones
func chooseStepFunction(backward: Bool ) -> (Int) -> Int {
    
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
       
    return backward ? stepBackward : stepForward
}

var value = 7
let moveNearerZero = chooseStepFunction(backward: value > 0)
while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}
print("Cero!!!!!!")
