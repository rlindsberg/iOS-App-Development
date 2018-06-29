//
//  ProductsVC.swift
//  Coder-Swag
//
//  Created by Roderick Karlemstrand on 25/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self

        // Do any additional setup after loading the view.
    }

    private(set) public var products = [Product]()
    
    //pass in a category, use "category.title" and return matched products.
    func initProducts(category: Category) {
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) {
            //pass in the data we need
            let product = products[indexPath.row]
            cell.up //*** the auto/completion doesn't work <= forgot to cast in cell
        }
    }
}
