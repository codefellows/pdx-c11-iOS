//  ThirdVC.swift
//  vcDirect
//
//  Created by Al on 7/9/15.
//  Copyright (c) 2015 Al. All rights reserved.

import UIKit

class ThirdVC: UIViewController {

    @IBAction func backButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
        println("Stack popped from 2ndVC's backButton")
    }

    @IBAction func rootButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        println("3rd viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*  // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }*/
}
