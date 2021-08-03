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

