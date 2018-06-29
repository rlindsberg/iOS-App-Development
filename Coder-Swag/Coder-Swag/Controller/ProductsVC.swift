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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private(set) public var products = [Product]()
    
    //pass in a category, use "category.title" and return matched products.
    func initProducts(category: Category) {
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
    }

}
