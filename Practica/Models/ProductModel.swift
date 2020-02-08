//
//  ProductModel.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import Foundation

struct Product {
    var name: String
    var price: Double
    
    init(strName: String, dblPrice: Double) {
        self.name = strName
        self.price = dblPrice
    }
}

struct SelectedProduct {
    var quantity: Int
    var subtotal: Double
    var selectProduct: Product
    
    init(iQuantity: Int, dblSubtotal: Double, objProduct:Product){
        self.quantity = iQuantity
        self.subtotal = dblSubtotal
        self.selectProduct = objProduct
    }
}
