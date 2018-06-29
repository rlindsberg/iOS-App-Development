//
//  ProductsVC.swift
//  Coder-Swag
//
//  Created by Roderick Karlemstrand on 25/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {

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
