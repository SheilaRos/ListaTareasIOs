//
//  CeldaPersonalizada.swift
//  PracticaVistas
//
//  Created by DAM on 20/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class CeldaPersonalizada: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }

}
