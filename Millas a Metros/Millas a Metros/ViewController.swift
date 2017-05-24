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
    //let unidades = { "millas"; "kilómetros" }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLbl.text = "Escribe la distancia a convertir"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func reloadView(convertedValue : Float, tipoConversion: String) {
        let formatedValue = String(format: "%.2f", convertedValue) //float dos decimales
        resultLbl.text = "\(formatedValue) \(tipoConversion)"
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        
        //var distancia : Double = 0
        if let distanciaTxt = distanceTxtFld.text, let distancia = Double(distanciaTxt) {
        
            let convertedValue : Float
            if conversionType.selectedSegmentIndex == 0 {
                //kms a mlls
                print("vamos a convertir \(distancia) Kilómetros a millas")
                convertedValue = Float(distancia / milleUnit)
                reloadView(convertedValue: convertedValue, tipoConversion: "millas")
            
                } else {
                    print("vamos a convertir \(distancia) millas a kilómetros")
                    convertedValue = Float(distancia * milleUnit)
                    reloadView(convertedValue: convertedValue, tipoConversion: "kilómetros")
                } // no cases should fall here
            
            
            } else {
                resultLbl.text = "El valor introducido no es correcto o fue omitido"
            }
    }
    
}

