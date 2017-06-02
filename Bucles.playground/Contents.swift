/* jugando con bucles y la sintaxis de los mismos en SWIFT
 */
//BUCLES FOR
//for estándard
for var i in 1...10 {
    print("La variable i vale \(i)")
}

//for que no llega al limite
for var k in 1..<10 {
    print("imprimo la variable k sin llegar al limite: \(k)")
}

//for en reversa
for var j in (1...10).reversed() {
    print("ahora lo escribe en reversa: \(j)")
}
//para interrumpir un bucle utilizamos la palabra break

//BUCLES WHILE
var i = 0
while i <= 20 {
    i += 1
    print("el valor de i en el bucle while: \(i)")
    
    if i % 7 == 0 && i>7 {
        print("El número i: \(i) es divisible entre 7")
    }
}

//un ejemplo para encontrar múltiplos como tal
var j = 0
var found = false

while !found {
    j += 1
    if j % 7 == 0 && j % 5 == 0 && j > 7 {
        found = true;
        print ("\(j) es múltiplo de 5 y 7")
    }
}

print("El último número al que he llegado es el número \(j)")


//RECORRER ARREGLOS
var names = ["Sabio","Gruñón","Mocoso","Tímido","Mudito","Dormilón", "Feliz"]

names.count

//opcion 1
for var i in 0..<names.count {
    print("El enanito número \(i) se llama \(names[i])")
}

//opcion 2: enumeracion
for dwarfName in names {
    print("\(dwarfName)")
}

//opcion 3:
for (index, dwarfName) in names.enumerated() {
    print("El enano en la posición \(index) se llama \(dwarfName)")
}

//EJERCICIO SOLICITA: SECTION 15, LECTURE 155

var favoriteMovies = ["Aliens",
                      "The Matrix",
                      "Ghostbusters",
                      "The Avengers",
                      "IronMan"]

for movieName in favoriteMovies {
    if (movieName == "Ghostbusters") {
        print("This is my favourite movie!!: \(movieName)")
    }
}

//END EJERCICIO
print("===================================")

var extras = ["Salchichas"  : 0.25,
              "Cebolla"     : 0.10,
              "Atún"        : 035,
              "Jalapeños"   : 0.10,
              "Queso Azul"  : 0.60,
              "Peperoni"    : 0.17 ]


for (key, value) in extras {
    print("El valor de añadir \(key) es de \(value) €")
}

//recorrer solo las llaves del diccionario
for key in extras.keys {
    print("El ingrediente que puedes añadir es \(key) y cuesta \(extras[key]!)" )
}

//recorrer los valores del diccionario
for value in extras.values {
    print("El costo de agregar ingredientes es \(value)")
    
}
//OJO: Las variables que recorren los valores de los dictionaries como value, key, etc. no son modificables, son de solo lectura

