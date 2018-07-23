//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Roderick Karlemstrand on 01/05/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var somePlayer: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        somePlayer = Player()
    }
    
    func selectLeague(leagueType: String){
        somePlayer.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) { //Don't write logic in IBAction
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    //prepareForSegue is always called before viewDisLoad on the destination view controller!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Grab the dest. view controller and put into a variable, then pass data to it
        if let thisSkillVC = segue.destination as? SkillVC {
            thisSkillVC.player = somePlayer
        }
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
