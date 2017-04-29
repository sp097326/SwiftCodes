//
//  ViewController.swift
//  Millas a Metros
//
//  Created by UDLAP on 4/28/17.
//  Copyright © 2017 UDLAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceTxtFld: UITextField!
    @IBOutlet weak var conversionType: UISegmentedControl!
    @IBOutlet weak var resultLbl: UILabel!
    
    let milleUnit : Double = 1.609
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLbl.text = "Escribe la distancia a convertir"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertPressed(_ sender: UIButton) {
        
        let distanciaTxt = distanceTxtFld.text
        var distancia : Double = 0
        if distanciaTxt == "" {
            print("show alert about using a value")
        } else {
            distancia = Double(distanciaTxt!)!
        }
        
        let convertedValue : Float
        if conversionType.selectedSegmentIndex == 0 {
            //kms a mlls
            print("vamos a convertir \(distancia) Kilómetros a millas")
            
            convertedValue = Float(distancia / milleUnit)
            resultLbl.text = "\(convertedValue) millas"
            
            
        } else {
            print("vamos a convertir \(distancia) millas a kilómetros")
            
            convertedValue = Float(distancia * milleUnit)
            resultLbl.text = "\(convertedValue) kilómetros"
        }
    }
}

