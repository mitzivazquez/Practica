//
//  ProductTableViewCell.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNameProduct: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    var delegate: add?
    var delegateProduct: cell?
    var product: Product?
    //var quantity: Int = 1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        //self.delegate?.send(iQuantity: 1, dblTotal: Double(lblPrice.text!)!)
        self.delegateProduct?.add(product: product!)
    
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
