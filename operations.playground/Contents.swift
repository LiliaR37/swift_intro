import UIKit

let b = 10
var a = 5


let (x,y) = (1,2)

if a == b {
    print("Los valores son igual ")
} else {
    print("No son iguales" )
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

//D/d -> D == d*c+r
9/4 //c
9%4 //r

//Comparacion
9 == 4*2+1

let five = 5
let minusFive = -five

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2


//Comparacion
1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1


let name = "Juan Gabriel"
if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


//En tuplas

(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")


//No se pueden comparar
//("perro", false) < ("perro", true)
//Solo con igualdad
("perro", false) == ("perro", true)

//Reto
(28,"Andrea Ruiz") < (31, "Juan Gabriel")
(28,"Andrea Ruiz") > (31, "Juan Gabriel")
(28,"Andrea Ruiz") == (31, "Juan Gabriel")

//Operaciones ternarias

/*
 if question {
    answer1
 } else{
    answer2
 }
 */

let contentHeight = 40
let hasImage = false
var rowHeight = 0
/*
 
 if hasImage {
     rowHeight = contentHeight + 50
 } else {
     rowHeight = contentHeight + 10
 }
 */

rowHeight = contentHeight + (hasImage ? 50 : 10)

let age = 18
let actualAge = 23

actualAge > age ? print("Yes, you can enter") : print("Sorry, you are too young ")

//Operador Nil Coalescing
let defaultAge = 18
var userAge: Int?
var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName


let defaultName = "Lady Gaga"
var userName: String?

var userNameToBeUsed = userName ?? defaultName



