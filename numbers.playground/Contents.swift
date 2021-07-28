import UIKit
//Enteros
let age : UInt8 = 31

let minValue = UInt8.min
let maxValue = UInt8.max

let minValue16 = UInt16.min
let maxValue16 = UInt16.max

let minValue32 = UInt32.min
let maxValue32 = UInt32.max

let minValue64 = UInt64.min
let maxValue64 = UInt64.max


//Doubles y Floats

let f1 : Float = 3.14159265 //Para querer hacerlo float
let d1 : Double = 3.14159265

let meanigOfLife = 42 //Int
let pi = 3.14159 //Double
let anotherPi = 3 + 0.14159 //Double

//Literales numericos

let decimalInteger = 17 // 1*10^1 + 7*10^0
let binaryInteger = 0b10001 //1*2^4+0*2^3+0*2^2+0*2^1+1*2^0
let octalInteger = 0o21 //2*8^1+1*8^0
let hexadecimalInteger = 0x11 //1*16^1+1*16^0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

//Para ver los numeros mejor se les agrega 0
let paddedDouble = 000123.456
let someNumber = 00000097.540

//Leer mas facil los numeros altos
let oneMillion = 1_000_000

let justMoreThanAMillion = 1_000_000.000_000_1

//ERRORES DE TIPO DE DATO
//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8 = UInt8.max + 1

//Convertir tipos de datos

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Para poder sumarlo sin ningun problema (casting)
let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber


let integerPi = Int(piNum)

//type alias
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max // UInt16.max 2^6-1


