//
//  CategoriesVC.swift
//  Coder-Swag
//
//  Created by Roderick Karlemstrand on 07/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate { //add datasouce and delegate

    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //the data source and delegate is this very class
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //add datasouce and delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //create so many rows, using .count to turn an array to int
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a reusable cell called CategoryCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryTableViewCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            //update views and let view manage itself
            cell.updateViews(category: category)
            //do not do this
            //cell.imageView?.image = UIImage(named: category.imageName)
            return cell
        } else {
            return CategoryTableViewCell() //return an empty one
        }
    }

}

