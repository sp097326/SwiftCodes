//: Playground - noun: a place where people can play

//Switch playground

let mark = "C"

switch mark {
case "A":
    print("Genial")
case "B":
    print("Buena nota")
case "C":
    print("Buen trabajo, panzaste")
case "D":
    print("Paseste apenitas")
case "F":
    print("Estudia màs muchacho")
default:
    print("Calificacion desconocida")
}


let dayOfTheWeek = "Juev"

switch dayOfTheWeek {
case "Lunes":
    print("Te falta toda la semana, animo!! - 4 días")
case "Martes":
    print("Ahí la llevas - 3 días para el viernes")
case "Miércoles":
    print("Media semana, ánimo - 2 días para viernes")
case "Jueves":
    print("Ya mero llegas!! - 1 días para viernes")
case "Viernes":
    print("Lo lograste!! has llegado al viernes - 0 días")
default:
    print("Ya no tener ni idea de en que dia vives, mejor pide vacaciones")
}

let character = "o"

//casos múltiples en una sola linea en switch
switch character {
case "a","e","i","o","u":       print("es una vocal")
default:
    print("no es una vocal")
}

//casos de intervalos
let speed = 125
switch speed {
case 0...60:
    print("Vamos demasiado despacio")
case 61...100:
    print("velocidad de crucero")
case 101...120:
    print("Velocidad considerable")
case 121...200:
    print("multa")
default:
    print("velocidad no válida")
}

