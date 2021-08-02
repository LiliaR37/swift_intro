import UIKit

func canThrowError() throws{
    //aquí hay codigo que puede causar un error
}


do{
    try canThrowError()
    //si llegamos aquí, no ha habido error
}catch{
    //si llegamos aquí, ha habido un error...
}

/*
 func makeASandwich() throws{
     
 }
 do{
     try makeASandwich()
     //Me como el sandwich
 }catch{
     //tengo platos limpios... -> Lavar los platos
     //tengo ingredientes -> Ir a hace la compra
     //no tengo hambre -> esperar dentro de una hora
 }

 
 */

// Reto
var cleanDishes = 0
var ingredientes = 10
var haveHungry: Bool = true

enum sandwichError: Error{
    case noCleanDishes
    case noIngredients
    case noHungry
}

func makeASandwich() throws{
    if cleanDishes < 1 {
        throw sandwichError.noCleanDishes
    }
    if ingredientes < 4 {
        throw sandwichError.noIngredients
    }
    if haveHungry == false {
        throw sandwichError.noHungry
    }
    print("Me hago un sandwich")
}


do{
    try makeASandwich()
    //Me como el sandwich
    print("Me como el sandwich")
}catch(sandwichError.noCleanDishes){
    //tengo platos limpios ...-> Lavar los platos
        print("lava 1 plato")
}catch (sandwichError.noIngredients){
    //tengo ingredientes -> Ir a hacer la compra
        print("compra ingredientes")
}catch (sandwichError.noHungry){
    //tengo hambre -> Esperar a tener hambre
        print("Esperar a tener hambre")
}

// Aserciones (debug) y Preciondiciones (build)
let age = -5
//assert(age>=0, "La edad de una persona no puede ser negativa")
precondition(age>=0, "La edad de una persona no puede ser negativa")
//... aquí el código sigue


if age > 10 {
    print("Puedes subir a la montaña rusa")
}else if age >= 0{
    print("Eres demasiado pequeño para subir a la montaña rusa")
}else{
    assertionFailure("La edad de una persona no puede ser negativa")
}
