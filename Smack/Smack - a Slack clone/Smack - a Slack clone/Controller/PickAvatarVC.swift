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
    private var avatarType = AvatarDataService.instance.avatarType //default
    private var segmentIndex = AvatarDataService.instance.avatarTypeSegmentCtrl

    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!

    @IBAction func segmentCtrlPressed(_ sender: Any) {
        //if first segment is pressed
        if(segmentCtrl.selectedSegmentIndex == 0) {
            
            avatarType = AvatarType.dark //set local
            AvatarDataService.instance.avatarType = avatarType //set global
            segmentIndex = 0 //set local
            AvatarDataService.instance.avatarTypeSegmentCtrl = segmentIndex //set global
            
        } else { //if second segment is pressed
            
            avatarType = AvatarType.light
            AvatarDataService.instance.avatarType = avatarType
            segmentIndex = 1
            AvatarDataService.instance.avatarTypeSegmentCtrl = segmentIndex
            
        }
        //avatar type changed. Reload view
        collectionView.reloadData()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

//Type 'PickAvatarVC' conforms to protocol 'UICollectionViewDataSource'
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { //type cellItemAt
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            print("Loding \(avatarType) avatars to the variable avatar")
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //iPhone 4s, 5s and SE
        if UIScreen.main.bounds.width == 320 {
            return CGSize(width: 84, height: 84)
        } else {
            return CGSize(width: 100, height: 100)
        }
    }
    //selecte avatar, type didselecte
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //save selected avatar to UserDataService
        if segmentIndex == 0 { //save dark ones
            UserDataService.instance.updateAvatarName(avatarName: "\( avatars[indexPath.row].title )" )
            print("Selected avatar: \(avatars[indexPath.row].title)")
        } else { //save light ones
            UserDataService.instance.updateAvatarName(avatarName: "\( avatars[indexPath.row].title )" )
        }
        dismiss(animated: true, completion: nil)
    }
//end of conforming to protocol

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print("ViewDidLoad, printing segmentctrl")
//        print(segmentCtrl.selectedSegmentIndex)
//        print("printing userDataService")
//        print(AvatarDataService.instance.avatarTypeSegmentCtrl)
//        print("Printing segmentIndex")
//        print(segmentIndex)
//        print("Printing avatarType")
//        print(avatarType)

        collectionView.delegate = self
        collectionView.dataSource = self

        //this if block fix bug that after selecting a light avatar and pressing "selecte avatar" again, PickAvatarVC view shows light avatars but "Dark" in SegmentController is highlighted
        //SegmentController inits in this VC and it always uses the default index 0
        if segmentIndex == 1 {
            segmentCtrl.selectedSegmentIndex = segmentIndex
        }

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
