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

//Verificar si está vacío
if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else{
    print("Mandemos a Ricardo a comprar")
}

//Agregando un elemento al final
shoppingList.append("Gaseosa")
shoppingList.count

//Otra forma de agregar al final del array
shoppingList += ["guacamole","tacos","tomates"]
shoppingList.count

//Consultar la posicion de los elementos
var firstElement = shoppingList[0]

//Asignar un elemento a la posicion
shoppingList[0] = "Huevos"
shoppingList

//Consultar por rangos
shoppingList[4...6]

//Asignar por rangos
shoppingList[2...4] =  ["Naranjas","Mango","Uva"]
shoppingList

//Eliminar elementos
let pepper = shoppingList.remove(at: 1)
shoppingList

//Para eliminar el primero o el ultimo
let _ = shoppingList.removeLast() //removeFirst()
shoppingList
