//
//  Medicamento.swift
//  MisRecetasMedicas
//
//  Created by swiftdev on 1/31/18.
//  Copyright © 2018 swiftdevelopment. All rights reserved.
//

import Foundation
import UIKit

class Medicamento {
    
    //las propiedades de la clase
    var nombre : String!;
    var laboratorio : String;
    var sustancia :  [String];
    var formato : String;
    //var foto : UIImage;
    
    init() {
        
        nombre = "Generico";
        laboratorio = "Generico";
        formato = "ml";
        sustancia = ["Sales"];
        //use a default noimageavailable foto
    }
    
}
