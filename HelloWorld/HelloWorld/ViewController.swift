//
//  ViewController.swift
//  HelloWorld
//
//  Created by swiftdev on 4/11/17.
//  Copyright © 2017 swiftdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonPressed: UIButton!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let alertController : UIAlertController = UIAlertController(title: "Hola, me has pulsado", message: "Botón presionado", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
        
        myLabel.text = "Hola \(nameTextField.text!) desde la etiqueta"
        
    }


}

