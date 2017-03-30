//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var cmdstr = "Another String"

var name = "Alberto"

var lastName = "Manzanilla"

var fullName = "\(name) \(lastName)"

var unNumero = 20

var otroNumero = unNumero * 10 //las operaciones son directas

//no se usa ++ y --
unNumero += 1
unNumero -= 1
unNumero += 9



//para efectos de concatenados en cadenas no imporrta mucho el tipo
var concatenados = "una cadena + mas un numero:\(str) \(unNumero)"

//ciclos for
//pasamos de for int i=0; i <10; i++ {}
for i in 0..<9 {
    print("hola \(name) \(i)")
}

//otra forma de hacer lo mismo si la variable no me interesa
for _ in 0..<9 {
    print ("hola \(name) sin variable")
}


//parámetros: para declarar no hay mucho nuevo
func sumaDosNumeros(x:Int, y:Int) -> Int {
    return x+y
}
//en el uso de la funcion tenemos que dar el nombre de las variables a fuerza
sumaDosNumeros(x: 7, y: 9)

//Enums
enum Direction {
    case north
    case south
    case east
    case west
}

Direction.north

//arcortar nombres -- ojo, también son zero based
var food = ["Pizza","Macarrones","Fajitas"]
food.append("Café")
food.insert("Enslada", at: 2)

let red = UIColor.red

//ojo con los color literals, al escribir "color" al declarar algo te da la opción de escoger un color.
let newColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)


//existían clases NSDate que tenían las funciones básicas como Date, provenían de Next Step, estas se quitaron antes por ejemplo era NSDate esto pertenecía Foundation
let date : Date = Date();

//algunas cosas permanecen como NSURL y NSString

