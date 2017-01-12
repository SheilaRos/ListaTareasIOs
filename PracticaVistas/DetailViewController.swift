//
//  DetailViewController.swift
//  PracticaVistas
//
//  Created by DAM on 21/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titulo: UITextField!
    @IBOutlet weak var descripcion: UITextField!
    
    var tit: String = ""
    var desc: String = ""
    var row : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text="\(tit)"
        descripcion.text="\(desc)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editar(_ sender: UIButton) {
        if(titulo.text == "" || descripcion.text == ""){
            return
        }else{
            tareas[row].descripcion = descripcion.text!
            tareas[row].titulo = titulo.text!
            dismiss(animated: true, completion: nil)
        }
        
    }

    @IBAction func cancelar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
