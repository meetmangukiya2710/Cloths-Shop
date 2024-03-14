//
//  ProductDetailViewController.swift
//  Cloths Shop
//
//  Created by R95 on 05/02/24.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    @IBOutlet weak var item_Image: UIImageView!
    
    @IBOutlet weak var item_Name: UILabel!
    
    @IBOutlet weak var item_Price: UILabel!
    
    @IBOutlet weak var buyBotton: UIButton!
    
    var itemImage = UIImage(named: "")
    var itemName = ""
    var itemPrice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
    }
    
    func design() {
        buyBotton.layer.cornerRadius = 10
            
        item_Image.image = itemImage
        item_Name.text = itemName
        item_Price.text = itemPrice
    }
    
    

}
