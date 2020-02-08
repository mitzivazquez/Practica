//
//  BuyTableViewCell.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit




class BuyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblNameProduct: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblSubtotal: UILabel!
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
