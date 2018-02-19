//
//  ViewController.swift
//  MyGarage
//
//  Created by Alberto Manzanilla on 6/5/17.
//  Copyright © 2017 Alberto Manzanilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    var myGarage : [Car] = []
    var myCar : Car!
    
    var carId : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCar = Car(cv: 190, make : "Honda", model: "CRV", color : #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), kms: 15000.00, image: nil )
        
        myGarage.append(myCar)
        
        myCar = Car(cv: 80, make: "Citroen", model: "Jumpy", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), kms: 180000.00, image: #imageLiteral(resourceName: "citroen"))
        
        myGarage.append(myCar)
        
        myCar = Car(cv: 300, make: "Ferrari", model: "Italia", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), kms: 2000, image: #imageLiteral(resourceName: "ferrari"))

        myGarage.append(myCar)
        
        myCar = Car(cv: 60, make: "Fiat", model: "500", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), kms: 200000.00, image: #imageLiteral(resourceName: "fiat"))
        
        myGarage.append(myCar)
        
        carId = 0
        
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateView() {
        myCar = myGarage[carId]
        
        UIView.animate(withDuration: 1.5, delay: 0.25, options: [.transitionCurlUp, .transitionFlipFromRight],
                       animations: {
                        //en todo bloque asincrono (como es este completion handler) se requiere la palabra
                        //self para referir a una variable de clase
                        if (self.myCar.image != nil) {
                            self.imageView.image = self.myCar.image
                        } else {
                            self.imageView.image = nil
                        }
                        
                        self.label1.text = self.myCar.make!
                        self.label2.text = self.myCar.model!
                        self.label3.text = "With \(self.myCar.cv!) hp - W: \(self.myCar.powerToWatts())"
                        self.label4.text = "Has \(self.myCar.kms!) kms"
                        
                        self.view.backgroundColor = self.myCar.color!
        }) { (completed) in
            print("animación completada. Recuerda que la vel maxima es de \(Car.maxSpeed())")
        }
        
        
    }


    @IBAction func changeCar(_ sender: UIButton) {
        carId += 1
        if (carId >= myGarage.count) {
            carId = 0;
        }
        
        updateView()
    }
    
    
    @IBAction func acceleratePressed(_ sender: UIButton) {
        self.myCar.accelerate()
    }
    
    @IBAction func add10kms(_ sender: UIButton) {
        self.myCar.addKms(kms: 10.0)
        updateView()
    }
}

