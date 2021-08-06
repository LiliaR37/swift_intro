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

//Iterando en un array
for item in shoppingList {
    print(item)
}

//Iterando para saber la posicion por medio de una tupla
for (index, item) in shoppingList.enumerated() {
    print("Item \(index+1): \(item)")
}


//Reto
var itemsStore :  [String] = ["Camisas", "Pantalones", "Faldas", "Remeras", "Pijamas"]

if itemsStore.isEmpty {
    print("No hay artículos en la tienda")
} else{
    itemsStore += ["Zapatillas","Bikinis"]
   
}

for (index, item) in itemsStore.enumerated() {
    print("Categorías \(index+1): \(item)")
}


//Conjuntos - sets
var letters = Set<Character>()
letters.count
//Insertar en conjuntos
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

//Inicializar y agregar
var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favouriteGames.count

//Comprobar si está vacío
if favouriteGames.isEmpty{
    print("No hay juegos favoritos")
}

//Insertar
favouriteGames.insert("Metal Gear")
favouriteGames.count

//Para eliminar
if let removedGame = favouriteGames.remove("Farcry"){
    print("He eliminado de la lista \(removedGame)")
}

//Contiene
if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

//Para iterarlos por orden con .sorted()
for vg in favouriteGames.sorted() {
    print(vg)
}

//Reto
var movies : Set <String> = ["Harry Potter", "Lord of the rings","One Day"]

movies.insert("One Day")
movies.count

for movie in movies.sorted(){
    print(movie)
}

//Iteraciones y operaciones sobre conjuntos
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()

//A intersección B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()


let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals:Set = ["🐁", "🕊"]

// Subconjunto
houseAnimals.isSubset(of: farmAnimals)

//SuperConjunto
farmAnimals.isSuperset(of: houseAnimals)

//A y B son disjuntos si su intersección es vacía
farmAnimals.isDisjoint(with: cityAnimals)


//Reto
let fruits:Set  = ["🍏","🍓"]
let vegetables:Set = ["🥕","🥦","🥬","🌶"]
let favoriteFood:Set = ["🍓","🥗","🍣","🌮","🍏"]

fruits.isSubset(of: favoriteFood)
fruits.isDisjoint(with: vegetables)
favoriteFood.isSuperset(of: vegetables)

// Diccionarios [k1:v1, k2:v2, ....]

//Diccionario vacío
var namesOfIntegers = [Int : String]()
namesOfIntegers[15] = "quince"

//Vaciar el diccionario
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "PTY": "Panamá",
                                  "PMI": "Palma de Mallorca",
                                  "DUB": "Dublin"]


airports.count

//Para saber si está vacío
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

//Sobreescribir una llave
airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports


//Para actualizar un valor
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

//Para ver el dato por la llave
if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

//Para eliminar un diccionario
airports["PTY"] = nil
airports

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}
airports

//Reto

var familyMembers: [String: UInt8] = [
    "Maria": 47,
    "Victor":53,
    "Daniela":25,
    "Pepe":6]

familyMembers.count
familyMembers["Andrea"] = 28
familyMembers

familyMembers.count

for (key,value) in familyMembers
{
    print("Los miembros de la familia Ruiz son: \(key) - \(value) ")
}

//Iteración en diccionarios
for (key, value) in airports {
    print("\(key) - \(value)")
}

//Por llaves
for airportKey in airports.keys{
    print(airportKey)
}
//Por valores
for airportName in airports.values{
    print(airportName)
    
}

//Para que salgan en arrays las llaves
let airportKeys = [String](airports.keys.sorted())

//Para que salgan en arrays los valores
let airportNames = [String](airports.values.sorted())
