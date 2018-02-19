//
//  receta.swift
//  MisRecetasMedicas
//
//  Created by swiftdev on 1/25/18.
//  Copyright © 2018 swiftdevelopment. All rights reserved.
//

import Foundation

class receta : NSObject {
    var nombreNiño : String = "";
    var fechaRegistro : Date = Date.init();
    var fechaVisita : Date = Date.init();
    var doctor : Medico;
    var padreAcompañante : String;
    var medicamentos : [Medicamento] = [];

    
    init(padre : String) {
        //do some init work, like dates for defaults and some other data
        nombreNiño = "Hijo X";
        doctor = Medico.init();
        padreAcompañante = padre;
    }
    
    
    
}
