import UIKit



let someString = "Soy un string"

 

//Con el "\" quita el salto de linea
let multiLineString = """
    Taylor Swift - 22
    I don't know about you\
    But I'm feeling 22\
    Everything will be alright if
    You keep me next to you
"""

print(multiLineString)

//Escribir quotes
let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"

let dolarSing = "\u{24}"

let blackHeart = "\u{2665}"

let heart = "\u{1F496}"



let myFlag = "\u{1F1FB}\u{1F1EA}"
let countryFlag = "\u{1F1E6}\u{1F1F7}"
let name = "Andrea Ruiz"

let greetings = """
    Hola, mi nombre es \(name)
    Soy de \(myFlag) pero vivo en \(countryFlag)
    Saludos...
    """

print(greetings)

//Empty Strings
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nada que ver por acá")
}else {
    print("El string tiene un valor")
}

//Agregar mas valores
var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b) ")
b = a
print("a vale \(a) y b vale \(b) ")
b = "C"
print("a vale \(a) y b vale \(b) ")
a = "D"
print("a vale \(a) y b vale \(b) ")


 //character
 let fullName = "Andrea Ruiz 🤓"
 for character in fullName {
     print(character)
 }

 print(fullName.count)



let exclamationMark: Character = "!"

let nameChars: [Character] = ["J", "u", "a", "n"]
//Pasarlo a String
var nameString = String(nameChars)

let compoundName = "Juan " + "Gabriel"

//Agregar otro elemento
nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)

//Reto 1

let myNameCharacter: [Character] = ["A","n","d","r","e","a"]
let myFlagCharacter: [Character] = ["\u{1F1FB}","\u{1F1EA}"]

var myNameString = String(myNameCharacter)
myNameString.append(String(myFlagCharacter))

 //Reto 2
let num = 5
for i in 1...10 {
    print("\(num) X \(i) = \(i*num) ")
}

 

let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]



for idx in greeting.indices{
    print("\(greeting[idx])", terminator:"")
}

//Insertar nuevo elemento
var welcome = "Hola"
welcome.insert("!", at: welcome.endIndex)

//Insertar contenido en posicion concreta
welcome.insert(contentsOf: " que tal",
               at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
welcome


greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex

//Substring
let firstPart = greeting[..<index]
//Pasarlo siempre a String
let newString = String(firstPart)

//Prefijos y sufijos
let newGreeting = "Hola, soy Juan Gabriel"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("chao")


let collection = [
    "Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("El número de escenas del acto 1 es: \(act1SceneCount)")

let studentsList = [
"David Rodriguez","Jose Perez","Amir Zapata","Luis Ramirez",
"Carla Rodriguez", "Juan Perez", "Daniela Gonzales","Maria Diaz", "Gabriel Perez"
]

var lastNameCount = 0
for students in studentsList {
    if students.hasSuffix("Perez"){
        lastNameCount += 1
    }
}

print("Los estudiantes con el apellido Perez son: \(lastNameCount)")

//Unicode
let ghost = "¡¡Fantasma!! 👻"

//Primero se usaba utf8
for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

//Luego utf16
print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

//Ahota se usa unicode
print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
