//
//  FirstViewController.swift
//  PracticaVistas
//
//  Created by DAM on 15/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit
var tareas:[Tarea] = []
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //cuantas filas tiene nuestra columna
        return tareas.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //crear una celda
        
        let miCelda = tabla.dequeueReusableCell(withIdentifier: "miCelda") as! CeldaPersonalizada
        miCelda.titulo.text = tareas[indexPath.row].titulo
        miCelda.descripcion.text = tareas[indexPath.row].descripcion
        miCelda.imagen.image = tareas[indexPath.row].imagen
        if(tareas[indexPath.row].realizada){
            miCelda.checkImage.image = #imageLiteral(resourceName: "tic.jpg")
        }
        return miCelda
    }
    override func viewDidAppear(_ animated: Bool) {
        tabla.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var detalle: DetailViewController = segue.destination as! DetailViewController
        var tareaIndex = tabla.indexPathForSelectedRow?.row
        var tareaSeleccionada = tareas[tareaIndex!]
        
        detalle.tit = tareaSeleccionada.titulo
        detalle.desc = tareaSeleccionada.descripcion
        detalle.row = tareaIndex!
        
    }
    override func viewWillAppear(_ animated: Bool){
        tabla.reloadData()
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        var deleteAction = UITableViewRowAction(style: .default, title: "Borrar", handler: {(action, IndexPath) -> Void in
        tareas.remove(at: IndexPath.row)
        self.tabla.reloadData()})
        var doneAction = UITableViewRowAction(style: .default, title: "Hecho", handler: {(action, IndexPath) -> Void in
        tareas[IndexPath.row].realizada = true
        self.tabla.reloadData()})
        return [deleteAction, doneAction]
    }
    
   func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        //VACIA
    }
    
}

