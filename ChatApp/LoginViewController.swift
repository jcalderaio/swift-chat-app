 //
//  LoginViewController.swift
//  ChatApp
//
//  Created by John Calderaio on 9/6/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //This is solely for styling the border of the button
    @IBOutlet var anonymousButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Add a border to the "Anonymous Button"
        anonymousButton.layer.borderWidth = 2.0
        
        //Add a border to the "Anonymous Button"
        anonymousButton.layer.borderColor = UIColor.whiteColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAnonymouslyDidTapped(sender: AnyObject) {
        print("login anonyomously did tapped")
        //Anonymously log users in and switch view
        //We switch view by setting navigation controller as the new root view controller
        
        //Create a main storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //From main storyboard instantiate a navigation controller
        let naviVC = storyboard.instantiateViewControllerWithIdentifier("NavigationVC") as! UINavigationController
        
        //Get the app delegate 
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //Set navigation controller as root view controller
        appDelegate.window?.rootViewController = naviVC
    }

    @IBAction func googleLoginDidTapped(sender: AnyObject) {
        print("google anonyomously did tapped")
        //Log users in using Google accounts
        
        //We switch view by setting navigation controller as the new root view controller
        
        //Create a main storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //From main storyboard instantiate a navigation controller
        let naviVC = storyboard.instantiateViewControllerWithIdentifier("NavigationVC") as! UINavigationController
        
        //Get the app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //Set navigation controller as root view controller
        appDelegate.window?.rootViewController = naviVC
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
