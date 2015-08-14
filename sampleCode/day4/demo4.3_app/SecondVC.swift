//  SecondVC.swift
//  vcDirect
//
//  Created by Al on 7/9/15.
//  Copyright (c) 2015 Al. All rights reserved.

import UIKit

class SecondVC: UIViewController {
    @IBAction func backButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
println("Stack popped from 2ndVC's backButton")
    }

    @IBAction func nextButton(sender: AnyObject) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle:nil)
println("About to push 3rd view onto stack")
        navigationController?.pushViewController(vc, animated:true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    } */
}
