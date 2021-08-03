import UIKit

//Arrrays
//Inicializar un array
var someInts = [Int]()
someInts.count
someInts.append(25)
//Contar cuantos elementos hay
someInts.count

//Otra forma de inicializarlos o vaciar
someInts = []

//Creando un array por medio de repeating
var someDouble = Array(repeating: 3.1415, count: 3)
someDouble.count

var moreDoubles = Array(repeating: 2.5, count: 4)

//Combinacion de arrays
var alotOfDoubles = someDouble + moreDoubles

//Otra forma
var shoppingList : [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

//Reto
var family : [String] = ["Maria","Victor","Daniela","Pepe"]
family.count
