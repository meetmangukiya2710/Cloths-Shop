//
//  OfferPageViewController.swift
//  Cloths Shop
//
//  Created by R95 on 06/02/24.
//

import UIKit

class OfferPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var bestSellCollection: UICollectionView!
    
    var productImage = ["hoodies1","hoodies2","hoodies3","hoodies4","hoodies5","hoodies6","hoodies7","hoodies8","hoodies9","hoodies10"]
    
    var productName = ["White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie","White Hoddie"]
    
    var productPrice = ["229$","229$","229$","229$","229$","229$","229$","229$","229$","229$"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bestSellCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BestSellCollectionViewCell
        
        cell.item_Image.image = UIImage(named: productImage[indexPath.row])
        cell.item_Name.text = productName[indexPath.row]
        cell.item_Price.text = productPrice[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 166, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let seclect = storyboard?.instantiateViewController(identifier: "ProductDetailViewController") as! ProductDetailViewController
        
        seclect.itemImage = UIImage(named: productImage[indexPath.row])
        seclect.itemName = productName[indexPath.row]
        seclect.itemPrice = productPrice[indexPath.row]
        
        self.navigationController?.pushViewController(seclect, animated: true)
    }

    
    @IBAction func shopButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(identifier: "OfferPageViewController") as! OfferPageViewController
        
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}
