import UIKit
let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}


let enterDoorCode = false
let passRetinaScan = true

if enterDoorCode && passRetinaScan { //AND
    print("Bienvenido a la empresa")
}else{
    print("ACCESO DENEGADO")
}

let hasMoney = false
let hasInvitation = false
if hasMoney || hasInvitation{ //OR
    print("Bienvenido a la fiesta!")
} else{
    print("No eres bienvenido aquí...")
}


if (enterDoorCode && passRetinaScan) ||
    hasMoney || hasInvitation{
    print("Has entrado")
} else{
    print("Acceso denegado")
}



let fullyVaccinated = false
let money = true


if fullyVaccinated && money {
    print("Puedes viajar")
} else {
    print("Lo siento pero no puedes viajar ")
}
