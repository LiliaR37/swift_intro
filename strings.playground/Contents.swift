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
