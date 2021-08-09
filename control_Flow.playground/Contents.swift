import UIKit

//Bucle for-in
//En un array
let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names {
    print("Hola, \(name)!")
}

//En un diccionario

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for(animalName,legCount) in numberOfLegs {
    print("Animal: \(animalName), número de patas: \(legCount)")
}

//rangos
for idx in 1...5{
    print("\(idx) x 3 = \(idx*3)")
}

//Cuando no se usa la variable
let base = 2
let power = 10
var answer = 1

for _ in 0..<power{
    answer *= base
    print(answer)
}

//Por un intervalo con stride
var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

//Reto
let hours = 24
let hourInterval = 3
var startTime = 0

for time in stride(from: startTime, to: hours, by: hourInterval) {
    if time <= 9 {
        print("La hora es \(time):00 am")
    } else {
        print("La hora es \(time):00 pm")
    }
}

//While
var i = 0
while i <= 10 {
    i += 1
    print(i)
}

//repeat while
repeat {
    i += 1
} while i <= 10

print(i)

var countPrime = 0
for num in 2...100{
    for idx in 1...num{
        if num % idx == 0{
            countPrime += 1
        }
    }
    if countPrime <= 2{
        print(num)
    }else{
        countPrime = 0
    }
}

//If Else
var temp = 30
if temp <= 15{ //temp <= 15
    print("Hace frío! Enciende la calefacción")
}else if temp >= 25{//temp > 25
    print("Hace calor! Encendamos el aire acondicionado")
}else{// 15 < temp < 25
     print("La sensación térmica es agradable. No hace falta modificarla")
}

//reto
var money = 60

if money <= 10  {
    print("Si, me gusta. Dar Dinero")
}else if money <= 50  {
    print("Dar más dinero")
}else if money <= 100 {
    print("Eh no, mucho dinero")
} else {
    print("Lo siento, no tengo dinero")
}

//Switch case

let someCharacter: Character = "Z"
switch someCharacter {
    case "a", "A":
        print("Es la primera letra del alfabeto")
    case "z", "Z":
        print("Es la última letra del alfabeto")
    default:
        print("Es alguna otra letra")
}
//reto
let letter = "e"

switch letter {
case "a","A","e","E","i","I","o","O","u","U":
    print("La letra ingresada es una vocal")
case "b","B","c","C","d","D","f","F","g","G","h","H","j","J","k","K","l","L","m","M","n","N", "ñ","Ñ","p", "P","q", "Q","r", "R","s", "S", "t","T", "v","V","w","W", "x","X", "y","Y","Z":
    print("La letra ingresada es una consonante")
    
default:
    print("El valor ingresado no es permitido. Se requiere una letra")
}

//Switch usando rangos - Interval matching
let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1, 2, 3, 4:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100..<1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchiiiiisimas"
}
print("\(naturalCount) \(phrase)")

//Reto

let amount = 400
let amountPhrase : String

switch amount {
case 10...50:
    amountPhrase = "Si, puedo prestarte, no hay problema"
case 100..<500:
    amountPhrase = "Bueno, pero me lo regresas eh!"
case 500..<1_000:
    amountPhrase = "Eh, no. Es mucho dinero. No tengo tanto."
default:
    amountPhrase = "Lo siento, no tengo dinero"
    
}
print(amountPhrase)

//Switch usando tuplas
let somePoint = (5,-8)
switch somePoint {
case (0,0):
    print("El punto \(somePoint) es el origen de coordenadas")
case (_, 0):
    print("El punto \(somePoint) se halla sobre el eje de las X")
case (0, _):
    print("El punto \(somePoint) se halla sobre el eje de las Y")
case (-2...2, -2...2):
    print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
default:
    print("El punto \(somePoint) está en algún otro lado")
}



let anotherPoint = (2,2)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las X, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las Y, con valor \(y)")
case let (x,y) where x == y:
    print("El punto se halla sobre la recta x = y")
case let (x,y) where x == -y:
    print("El punto se halla sobre la recta x = -y")
case let (x,y):
    print("En algún otro lugar del plano, en (\(x), \(y))")
}


let stillAnotherPoint = (0,5)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    break
}


let deliveryState: (String, String, Int) = (Estado: "Entregado", Horario: "A tiempo", Distancia: 49 )
let status: String

// Reto
switch deliveryState {
case ("Entregado", "A tiempo", 0..<50):
    status = "El pedido a sido entregado a tiempo y cerca al punto GPS registrado"
case ("Entregado", "Retrasado", 0..<50):
    status = "El pedido a sido entregado con retraso y cerca al punto GPS registrado"
case ("Pendiente",_, _):
    status = "El pedido todavia no a sido entregado"
case ("Entregado", "A tiempo", 50...100):
    status = "El pedido a sido entregado a tiempo, lejano al punto GPS registrado"
case ("Entregado", "Retrasado", 50...100):
    status = "El pedido a sido entregado con retraso, lejano al punto GPS registrado"
default:
    status = "Por favor ponerse en contacto con nuestros operadores"
}

print(status)


//Control Transfer Sentences - continue, break, fallthrough, return, throw

//continue, break
let sentence = "las mentes grandes piensan igual"
var filteredSentence = ""
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]
for ch in sentence{
    if charactersToRemove.contains(ch){
        continue
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentence



let integerToDescribe = 5
var description = "El número \(integerToDescribe) es"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un número primo, y"
    fallthrough
default:
    description += " un número entero."
}
print(description)


//guard - return
var people = ["name": "Juan Gabriel", "age": 31, "isMale": true] as [String : Any]

func testUserValidation(person:[String: Any]){
    guard let surname = person["surname"] else{
        print("El apellido es desconocido")
       return
    }
    //aquí existe surname
    print(surname)
    guard let age = person["age"] else{
        print("La edad es desconocida")
        return
    }
    print("La edad de la persona es \(age)")
}

people["surname"] = "Gomila"
testUserValidation(person: people)

//Chequeo de compatibilidad
if #available(iOS 12, macOS 10.12, *){
    //Ejecutar las acciones a lo iOS12+, a los macOS12+
}else{
    //Mantener el código viejo con versiones anteriores de iOS, macOS...
}
