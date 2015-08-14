//  ViewController.swift
//  NavCtl_exp1
//
//  Created by Al on 7/8/15.
//  Copyright (c) 2015 Al. All rights reserved.

import UIKit

class ViewController: UIViewController, foodVCProto {

    @IBOutlet weak var foodLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Main view controller: viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func myVCDidFinish(foodVC: foodViewController, foodString: String) {
        foodLabel.text = "Food is " + foodString
        foodVC.navigationController?.popViewControllerAnimated(true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toView2Segue" {
            let vc = segue.destinationViewController as! foodViewController
            vc.foodString = foodLabel.text!
            vc.delegate = self
        }
    }
}
