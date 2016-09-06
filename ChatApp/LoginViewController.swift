 //
//  LoginViewController.swift
//  ChatApp
//
//  Created by John Calderaio on 9/6/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var anonymousButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        anonymousButton.layer.borderWidth = 2.0
        anonymousButton.layer.borderColor = UIColor.whiteColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAnonymouslyDidTapped(sender: AnyObject) {
        print("login anonyomously did tapped")
    }

    @IBAction func googleLoginDidTapped(sender: AnyObject) {
        print("google anonyomously did tapped")
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
