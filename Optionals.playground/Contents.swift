//Optionals training
var str : String
str = "Hola"
print(str)

//declarando un string como opcional
var str0 : String?
print(str0)
str0 = "Soy un string opcional"
print(str0)
str0 = nil
print(str0)
//al declararla como opcional no tenemos problema con que sea nil

//aqui podemos utilizar el optional binding
//let hace que una variable siempre sea requerida, es decir un let siempre es requerido

str0 = "Hola" //jugar con cambiar este valor a nil
if let str0 = str0 {
    print(str0)
}

//para declarar una variable como requerida
var strR : String!
//para convertir de optional a requerido se le pospone un !
//no tiene mucho sentido transformar de requerido a opcional
//no se recomienda tanto esto sino mejor realizar un optional binding
//constantes opcionales => malo

let airports = ["PMI":"Palma de Mallorca", "BCN":"Barcelona", "MAD":"Madrid","VAL":"Valencia"]

if let theAirport = airports["VAL"] {
    print("El aeropuerto \(theAirport)existe")
}


