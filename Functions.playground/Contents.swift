import Foundation

//Functions
func sayHello() {
    //cuerpo de la función
    let date = Date()
    print("hola ahora son: \(date)")
}

sayHello()


//anotherFunctions
func sayHelloNTimes(time: Int, to:String) {
    let date = Date()
    print("hola, \(to) ahora son: \(date)")
    print("hemos dicho hola \(time) veces")
}

sayHelloNTimes(time: 1,to: "Pepe")
sayHelloNTimes(time: 2,to: "Antonia")
sayHelloNTimes(time: 3,to: "Maria")


//para devolver valores
func power2(exponent: Int) -> Decimal {
    return pow(2,exponent)
}

let exponent = 5
let power = power2(exponent: 5)
print("El valor de 2 elevado a \(exponent) es \(power)")

//metiendo el tema del optional binding
var extras = ["Salchichas"  :   0.25,
              "Cebolla"     :   0.10,
              "Atún"        :   0.35,
              "Jalapeños"   :   0.10,
              "Queso Azul"  :   0.60,
              "Pepperoni"   :   0.17
]


func addExtraIngredient(extras: [String : Double], ingredientName : String, quantity : Int) -> Double? {
    /*
    Para probar otra sintaxis
    if let unitPrice = extras[ingredientName] {
        return Double(quantity) * unitPrice
    }
    
    return nil
     
     la sintaxis a aprender es guard, es un else donde la condicion
     correcta va en ejecución normal y entre llaves solamente el código else
     */
    guard let unitPrice = extras[ingredientName] else {
        return nil
    }
    return Double(quantity) * unitPrice
    
}

addExtraIngredient(extras: extras, ingredientName: "Cebolla", quantity: 2)
addExtraIngredient(extras: extras, ingredientName: "Salchicha", quantity: 1)

//Concepto de Tuplas
let company = ("AAPL", "Apple Company Inc.", 153.61)
//esto crea un elemento que tiene 3 posiciones.
company.0
company.1
company.2

//otra forma
let (stockCode, companyName, stockPrice) = ("YHOO", "Yahoo Inc.", 50.66)
print("El valor de la compañía \(companyName) es \(stockPrice)")

//una mas
let company2 = (id:"AAPL", name:"Apple Inc.", price:153.61)

company2.id
company2.price


func getProduct(idProduct: Int) -> (id:String, name:String, price: Double, isAvailable: Bool) {
    var id = "IPH0", name = "iPhone5", price = 599.99, isAvailabe = true
    switch idProduct {
    case 1:
        id = "IPH6"
        name = "iPhone6"
        price = 699.99
    case 2:
        id = "IPDA"
        name = "iPad Air"
        price = 499.99
        isAvailabe = false
    case 3:
        id = "IMC2"
        name = "iMac 2016"
        price = 1399.99
    default:
        break
    }
    return (id, name, price, isAvailabe)
}

let product = getProduct(idProduct: 2)
print ("El producto con el id \(product.id) se llama \(product.name) y cuesta \(product.price) € ")

//Ejercicios con tuplas: ejercicio seccion 16, lecture 167
func stocksWithID(code:String) -> (id: String, fullName: String, stockPrice: Double) {
    var id = "N/A", fullName = "No available data", stockPrice = 0.0
    
    switch code {
    case "AAPL":
        id = code
        fullName = "Apple Inc."
        stockPrice = 156.28
    case "YHOO":
        id = code
        fullName = "Yahoo Inc."
        stockPrice = 50.58
    case "GOOG":
        id = code
        fullName = "Google Inc."
        stockPrice = 974.26
    default:
        break
    }
    
    
    return (id, fullName, stockPrice)
}
let compañia = stocksWithID(code: "NAM")
print("La compañía \(compañia.fullName) con clave \(compañia.id) tiene un valor en bolsa de \(compañia.stockPrice) por acción")



