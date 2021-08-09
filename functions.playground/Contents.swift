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
