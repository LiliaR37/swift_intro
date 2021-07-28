import UIKit

//Booleans
let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = false

if isAged{
    print("Puedes entrar en la fiesta")
}else{
    print("No puedes pasar a la fiesta ")
}

var age = 31
if age >= 18{
    print("Puedes entrar en la fiesta")
}else {
    print("No puedes pasar a la fiesta ")
}

//Tuplas
let http404Error = (404, "Página no encontrada")
let (statusCode, statusMessage) = http404Error

print("El código del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

print("El código del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

let profile = (name: "Andrea", age:28)
print("Hola, mi nombre es: \(profile.name) y tengo \(profile.age) años ")

//optional Nil
let possibleAge = "31"
let convertedAge = Int(possibleAge) //Int?


var surveyAnswer : String?
surveyAnswer = "42"

if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)") //se agrega el ! para forzar
} else{
    print("La edad del usuario es nula")
}

//optional binding
if let actualAnswer = surveyAnswer {
    //Al llegar aquí, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    //Al llegar aquí, surveyAnswer = nil
    print("El string \(surveyAnswer) es nil... ")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
}
