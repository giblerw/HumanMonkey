//
//  ViewController.swift
//  HumanMonkey
//
//  Created by Weston Gibler on 9/30/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground { (success, error) in
            if (success) {
                print("woohoo")
            } else {
                print("oops")
            }
        }
    }

}

