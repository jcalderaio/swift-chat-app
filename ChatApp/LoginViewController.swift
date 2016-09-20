 //
//  LoginViewController.swift
//  ChatApp
//
//  Created by John Calderaio on 9/6/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController {
    
    //  This is solely for styling the border of the button
    @IBOutlet var anonymousButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        //  Do any additional setup after loading the view.
        
        //  Add a border to the "Anonymous Button"
        anonymousButton.layer.borderWidth = 2.0
        
        //  Add a border to the "Anonymous Button"
        anonymousButton.layer.borderColor = UIColor.whiteColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //  Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAnonymouslyDidTapped(sender: AnyObject) {
        print("login anonyomously did tapped")
        
        Helper.helper.loginAnonymously()
    }

    @IBAction func googleLoginDidTapped(sender: AnyObject) {
        print("google anonyomously did tapped")
        //  Log users in using Google accounts
        
        GIDSignIn.sharedInstance().signIn()
        
        Helper.helper.logInWithGoogle()
        
    }

}
