//
//  ProductTableViewController.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

  /*@IBOutlet var tableProduct: UITableView!
    var product: Array<Product> = []
    var quantity: Int = 0
    var total: Double = 0.0
    var delegate:visualize?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        harcodeo()
        self.tableProduct.delegate = self
        self.tableProduct.dataSource = self

    }
    
    func harcodeo() {
        product.append(Product(strName: "Muñeca", dblPrice: 20.40))
        product.append(Product(strName: "Balon", dblPrice: 100.99))
        product.append(Product(strName: "Canasto", dblPrice: 68.90))
        product.append(Product(strName: "Bicicleta", dblPrice: 1200.50))
        product.append(Product(strName: "Peluche", dblPrice: 48.62))
    }

    @IBAction func btnSave(_ sender: UIBarButtonItem) {
        self.delegate?.send(iQuantity: quantity, dblTotal: total)
        self.navigationController?.popViewController(animated: true)
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
         print (product.count)
         return product.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        let objProduct = product[indexPath.row]
        cell.lblNameProduct.text = objProduct.name
        cell.lblPriceProduct.text = String(objProduct.price)
        cell.delegate = self
        return cell
    }

}

extension ProductTableViewController: add {
    
    func send(iQuantity: Int, dblTotal: Double) {
        quantity += iQuantity
        total += dblTotal
    }
    
   */
}

