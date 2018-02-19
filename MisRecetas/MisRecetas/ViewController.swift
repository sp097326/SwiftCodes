//
//  ViewController.swift
//  MisRecetas
//
//  Created by swiftdev on 8/4/17.
//  Copyright © 2017 swiftdevelopment. All rights reserved.
//

import UIKit

class ViewController: UITableViewController { /* UIViewController, UITableViewDataSource, UITableViewDelegate */
    
    var recipes : [Recipe] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    //MARK: - UITableViewDataSource
    //todos estos metodos son de la impementación de la UITableViewDelegate, son los métodos que dan a conocer a los delegados
    //como mapear la información del modelo de datos a la inteface gráfica.
    
    //cuantas secciones tiene la tabla
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //numero de filas por seccion
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image
        return cell
    }
    
    // hide the status bar --> we now override a propierty
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

