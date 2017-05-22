var age : Int = 39

var name : String  = "Alberto Manzanilla"



var shoppingList = ["Patatas","Huevo", "Cebolla", "Pimientos"]
var shoppingListDeclared : [String] = ["algo", "segundo"]

var luckyNumbers = [7,11,5,1,13]

var weight = [68.9, 49.5, 80.0]

var activeItems = [true, false, false, true, true]


var newArray : [String] = []

var otherArray : [String] //así estaría en el limbo, no está creado

//todo esto puede estar declarado como constante con Let

shoppingList.count

shoppingList.append("Plátano")

shoppingList.count

shoppingList.append("5 litros de chela")

shoppingList.count

luckyNumbers.append(3)

luckyNumbers.count

for num in 0..<luckyNumbers.count {
    print("numero: \(luckyNumbers[num])")
}

shoppingList.first
shoppingList.last
shoppingList[5] = "2 litros de chela"

shoppingList.insert("Brocoli", at: 2)
shoppingList.remove(at: 3)

shoppingList.contains("Cebolla")

shoppingList.insert("Zanahorias", at: 2)

shoppingList.contains("Plátano")

if (shoppingList.contains("Pimientos")) {
    let index = shoppingList.index(of:"Pimientos")
    shoppingList.remove(at: index!)
}

shoppingList.index(of:"Pimientos")

shoppingList += ["Chuletas","Lechuga","Salmón"]

shoppingList[2...4]

print(shoppingList)

//Dictionaries
var anotherShoppingList : [Int : String] = [0:"Patatas", 1:"Huevos", 2:"Cebollas", 3:"Pimientos"]
var textShoppingList : [String : String] = ["Patatas":"Tengo que comprar 1 kg de patatas",
                                            "Huevos" : "Neceisto 5 huevos para la tortilla",
                                            "Cebollas" : "Necesito 3 cebollas grandes",
                                            "Pimientos" : "Los primientos enriquecen la tortilla"]
anotherShoppingList[3]
textShoppingList["Huevos"]

//si el valor no existe crea el elemento
textShoppingList["Plátanos"]
textShoppingList["Plátanos"] = "Necesito 3 plátanos para una macedonia"

//declarar un Dictionary vacio, es decir inicializado
var myDict : [Int:Float] = [:]

var numbers : [Int : String] = [1:"Uno",2:"Dos",3:"Tres", 4:"Cuatro"]

numbers[3]

numbers.isEmpty

//jugando con el optional binding ------------ OJO, todos los ejemplos abajo tienen optional binding
//caso normal
let myNumber = numbers[3]

if myNumber != nil {
    print(myNumber)
}

//una forma más elegante de evitar el nil y por eso al hacer el print de la var ya no pone el optional, es seguro que no es nil
if let otherNumber = numbers[3] {
    print(otherNumber)
} else {
    print("no se pudo recuperar el valor")
}

var airports : [String : String] = ["PMI":"Palma de Mallorca", "BCN":"Barcelona","MAD":"Madid"]
//otra forma: var airpots = [String:String]()

if let oldAirport = airports.updateValue("Madrid", forKey: "MAD") {
    print("El valor anterior de la clave MAD era \(oldAirport)")
}

