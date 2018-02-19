//
//  Recipe.swift
//  MisRecetas
//
//  Created by amanzanilla on 8/24/17.
//  Copyright © 2017 swiftdevelopment. All rights reserved.
//

import Foundation
import UIKit

class Recipe : NSObject {
    var name : String!
    var image : UIImage!
    var cookingTime : Int!
    var ingridients : [String]!
    var steps : [String]!
    
    init (name : String) {
        self.name = name
    }
    
    init (name : String, image : UIImage) {
        self.name = name
        self.image = image
    }
    
}
