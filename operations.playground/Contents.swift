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

