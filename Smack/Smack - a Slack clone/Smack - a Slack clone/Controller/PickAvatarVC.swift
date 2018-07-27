//
//  PickAvatarVC.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 27/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class PickAvatarVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{ //implement protocols to work with collection view

    private(set) public var avatars = [Avatar]() //make an empty array of avatars
    private var avatarType = AvatarType.dark //default
    
    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func segmentCtrlPressed(_ sender: Any) {
        if(segmentCtrl.selectedSegmentIndex == 0) {
            avatarType = AvatarType.dark
        } else {
            avatarType = AvatarType.light
        }
        collectionView.reloadData()
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Type 'PickAvatarVC' conforms to protocol 'UICollectionViewDataSource'
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //type cellItemAt
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            avatars = AvatarDataService.instance.getAvatars(type: avatarType)
            let avatar = avatars[indexPath.row]
            cell.updateViews(type: avatarType, avatar: avatar)
            return cell
        }
        return AvatarCell() //an empty cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    //end of conforming to protocol
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
