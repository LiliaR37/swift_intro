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




