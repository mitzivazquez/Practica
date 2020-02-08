//
//  Protocols.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import Foundation


protocol add {
    func send (iQuantity: Int, dblTotal: Double)
}

protocol visualize {
    func send (iQuantity: Int, dblTotal: Double)
}

protocol oneView {
    func sendViewOne()
}

protocol cell {
    func add(product: Product)
}
