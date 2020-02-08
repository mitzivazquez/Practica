//
//  ViewController.swift
//  Practica
//
//  Created by Mitzi on 2/1/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "product"{
        let destination = segue.destination as! ProductViewController
        destination.delegate = self
    }
  }
}

extension ViewController: visualize {
    
    func send(iQuantity: Int, dblTotal: Double) {
        lblQuantity.text = String(iQuantity)
        lblTotal.text = String(dblTotal)
    }
    
    
    
}

