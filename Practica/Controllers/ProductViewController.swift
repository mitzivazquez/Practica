//
//  ProductViewController.swift
//  Practica
//
//  Created by Mitzi on 2/2/20.
//  Copyright © 2020 Mitzi. All rights reserved.
//

import UIKit



class ProductViewController: UIViewController {
    
    @IBOutlet weak var tableProduct: UITableView!
    
    var product: Array<Product> = []
    var arrProductosSeleccionados: Array<SelectedProduct> = []
    var quantity: Int = 0
    var total: Double = 0.0
    var delegate:visualize?//mostar en la primera pantalla
    var productCell: cell?//lo que selecciona
    
    
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
    
    @IBAction func btnSave(_ sender: UIButton) {
        //self.productCell?.add(product: Objproduct!)
        performSegue(withIdentifier: "compra", sender: nil)
        //self.delegate?.send(iQuantity: quantity, dblTotal: total)
        //self.navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! BuyViewController
        destination.productSelected = arrProductosSeleccionados
        
    }
    
}

extension ProductViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Tienes \(self.product.count)")
        return product.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        let objProduct = product[indexPath.row]
        cell.lblNameProduct.text = objProduct.name
        cell.lblPrice.text = String(objProduct.price)
        cell.product = objProduct
        //cell.delegate = self
        cell.delegateProduct = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
}

/*extension ProductViewController: add {
    
    func send(iQuantity: Int, dblTotal: Double) {
        quantity += iQuantity
        total += dblTotal
        
    }

}*/

extension ProductViewController: cell {
    
    func add(product: Product) {
         self.arrProductosSeleccionados.append(SelectedProduct(iQuantity: 1, dblSubtotal: 0.0, objProduct: product))
        print("Agregar al carrito")
    }
   }

