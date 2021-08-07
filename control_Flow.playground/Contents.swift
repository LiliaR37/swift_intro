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
