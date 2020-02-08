//
//  BuyViewController.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {
    
    @IBOutlet weak var tableBuy: UITableView!
    @IBOutlet weak var lblTotal: UILabel!
    
    var productSelected: Array<SelectedProduct> = []
    var compraCarrito:Array<Any> = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableBuy.delegate = self
        self.tableBuy.dataSource = self
        
        for p in productSelected {
            let d:[Any] = [ p.selectProduct.name, p.selectProduct.price]
            compraCarrito.append(d)
        }
    }
    
    @IBAction func btnReturn(_ sender: UIButton) {
    }
    
    
    @IBAction func btnFinalize(_ sender: UIButton) {
    }
    
   
}

extension BuyViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print (productSelected.count)
        return productSelected.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BuyTableViewCell
        let objSelected = productSelected[indexPath.row]
        cell.lblNameProduct.text = objSelected.selectProduct.name
        cell.lblPrice.text = String(objSelected.selectProduct.price)
        
        return cell
    }
    
    
}
