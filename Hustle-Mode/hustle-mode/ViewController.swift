//
//  ViewController.swift
//  hustle-mode
//
//  Created by Linné Lind on 27/04/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var introBackground: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolderView: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    //@IBOutlet weak var darkBlueBG: UIImageView!
    //@IBOutlet weak var powerBtn: UIButton!
    //@IBOutlet weak var rocket: UIImageView!
    //@IBOutlet weak var cloudHolder: UIImageView!
    //@IBOutlet weak var hustleLbl: UILabel!
    //@IBOutlet weak var onLbl: UILabel!
    
    var avPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myPath = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let myUrl = URL(fileURLWithPath: myPath)
        do {
            avPlayer = try AVAudioPlayer(contentsOf: myUrl)
            avPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolderView.isHidden = false
        introBackground.isHidden = true
        powerButton.isHidden = true
        avPlayer.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
            self.hustleLabel.isHidden = false
            self.onLabel.isHidden = false
        }
    }

    
}


















