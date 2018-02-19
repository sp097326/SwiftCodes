//
//  Car.swift
//  MyGarage
//
//  Created by Alberto Manzanilla on 6/5/17.
//  Copyright © 2017 Alberto Manzanilla. All rights reserved.
//

import Foundation
import UIKit

class Car: NSObject {
    
    var cv : Int!
    var make : String!
    var model : String!
    var year : Int!
    var package : String!
    var color : UIColor!
    var kms : Double!
    var image : UIImage?
    
    override var description: String {
        return "Mi coche es un \(make) modelo \(model) color \(color) del año \(year) con \(kms) de kilometraje."
    }
    
    //Constructor por defecto
    override init() {
        cv = 0
        make = "Desconocido"
        color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        model = "Desconocido"
        kms = 0.00
    }
    
    init(cv : Int, make : String, model : String, color : UIColor, kms : Double, image : UIImage?) {
        self.cv = cv
        self.make = make
        self.model = model
        self.color = color
        self.kms = kms
        if let image = image {
            self.image = image
        }
    }
    
    func addKms(kms: Double!) {
        self.kms = self.kms + kms
    }
    
    func accelerate() {
        print("Brmmmmmmmmmmmm!!")
    }
    
    //esta se define como funcion de clase para asegurar que las tienen todos
    class func maxSpeed() -> Int {
        return 120
    }
    
    // 1 cv = 735 watts
    func powerToWatts() -> Int {
        return 735 * self.cv
    }
    
    
    
    
    
}
