//
//  Tarea.swift
//  PracticaVistas
//
//  Created by DAM on 15/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class Tarea: NSObject {
    var titulo: String
    var descripcion: String
    var realizada: Bool = false
    var imagen: UIImage = #imageLiteral(resourceName: "Torracat.png")
    
    init(titulo: String, descripcion: String) {
        self.titulo = titulo
        self.descripcion = descripcion
    }
    
    override init(){
        titulo = ""
        descripcion = ""
        realizada = false
        imagen = #imageLiteral(resourceName: "Torracat.png")
    }
    
}
