//
//  SecondViewController.swift
//  PracticaVistas
//
//  Created by DAM on 15/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var titulo: UITextField!
    @IBOutlet weak var descripcion: UITextField!
    @IBAction func accion(_ sender: UIButton) {
        var t = Tarea(titulo: titulo.text!, descripcion: descripcion.text!)
        tareas.append(t)
        self.tabBarController?.selectedIndex = 0
        titulo.text = ""
        descripcion.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

