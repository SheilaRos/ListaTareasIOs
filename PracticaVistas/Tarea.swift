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
    var realizada: Bool
    var imagen: UIImage
    
    init(titulo: String, descripcion: String, realizada: Bool, imagen: UIImage) {
        self.titulo = titulo
        self.descripcion = descripcion
        self.realizada = realizada
        self.imagen = imagen
    }
    
    override init(){
        titulo = ""
        descripcion = ""
        realizada = false
        imagen = #imageLiteral(resourceName: "Torracat.png")
    }
    
}
