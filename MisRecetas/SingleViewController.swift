//
//  SingleViewController.swift
//  MisRecetas
//
//  Created by amanzanilla on 9/4/17.
//  Copyright © 2017 swiftdevelopment. All rights reserved.
//


//alberto.manzanilla@udlap.mx

import UIKit

class SingleViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    var recipes : [Recipe] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //asignamos graficamente el datasource y el delegate (drag con ctrl oprimido al círculo en la parte superior del view
        //así se asignaría de forma "manual"
        //self.tableView.dataSource = self
        //self.tableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        var recipe = Recipe(name:"Tortilla de patatas", image: #imageLiteral(resourceName: "tortilla"))
        recipes.append(recipe)
        recipe = Recipe(name: "Pizza margarita", image: #imageLiteral(resourceName: "pizza"))
        recipes.append(recipe)
        recipe = Recipe(name: "Hamburguesa con queso", image: #imageLiteral(resourceName: "hamburguesa"))
        recipes.append(recipe)
        recipe = Recipe(name: "Ensalada César", image: #imageLiteral(resourceName: "ensalada"))
        recipes.append(recipe)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // hide the status bar --> we now override a propierty
    override var prefersStatusBarHidden: Bool {
        return true
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//este código permite realizar la "implementación" del contrato con UITableViewDataSource, es decir implementar los metodos del contrato para el delgado
extension SingleViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image
        return cell
    }
}
