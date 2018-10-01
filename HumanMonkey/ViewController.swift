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
    
    var signupModeActive = true
    
//Login text fields
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
//Signup button
    @IBAction func signupOrLogin(_ sender: Any) {
        if email.text == "" || password.text == "" {
            let alert = UIAlertController(title: "Error in form input", message: "Please enter a valid email & password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            print("Signing up...")
        }
    }
    @IBOutlet weak var signupOrLoginButton: UIButton!
    
//Login button
    @IBAction func switchLoginMode(_ sender: Any) {
        //First, findout which signup mode we are in
        if (signupModeActive) {
            //Change things from signupMode to loginMode
            signupModeActive = false
            signupOrLoginButton.setTitle("Log In", for: [])
            switchLoginModeButton.setTitle("Sign Up", for: [])
        } else {
            //Change things from loginMode to  signupMode
            signupModeActive = true
            signupOrLoginButton.setTitle("Sign Up", for: [])
            switchLoginModeButton.setTitle("Log in", for: [])
        }
    }
    @IBOutlet weak var switchLoginModeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

