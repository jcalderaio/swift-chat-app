//
//  Helper.swift
//  ChatApp
//
//  Created by John Calderaio on 9/18/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import Foundation
import FirebaseAuth
import UIKit

class Helper {
    
    static let helper = Helper()
    
    func loginAnonymously() {
        print("login anonyomously did tapped")
        //  Anonymously log users in and switch view
        
        //  Create a Firebase instance
        
        FIRAuth.auth()?.signInAnonymouslyWithCompletion({ (anonymousUser: FIRUser?, error: NSError?) in
            
            //  If there is no error, then login
            
            if error == nil {
                
                print("userId: \(anonymousUser!.uid)")
                
                //  We switch view by setting navigation controller as the new root view controller
                
                //  Create a main storyboard instance
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                //  From main storyboard instantiate a navigation controller
                let naviVC = storyboard.instantiateViewControllerWithIdentifier("NavigationVC") as! UINavigationController
                
                //  Get the app delegate
                let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
                
                //  Set navigation controller as root view controller
                appDelegate.window?.rootViewController = naviVC
            }
            else {
                print(error!.localizedDescription)
                return
            }
        })
    }
    
    func logInWithGoogle() {
        //  We switch view by setting navigation controller as the new root view controller
        
        //  Create a main storyboard instance
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //  From main storyboard instantiate a navigation controller
        let naviVC = storyboard.instantiateViewControllerWithIdentifier("NavigationVC") as! UINavigationController
        
        //  Get the app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //  Set navigation controller as root view controller
        appDelegate.window?.rootViewController = naviVC
    }
    
    
}