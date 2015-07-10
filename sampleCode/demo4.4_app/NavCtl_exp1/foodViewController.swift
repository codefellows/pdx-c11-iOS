//  foodViewController.swift
//  NavCtl_exp1
//
//  Created by Al on 7/9/15.
//  Copyright (c) 2015 Al. All rights reserved.

import UIKit

protocol foodVCProto {
    func myVCDidFinish(foodVC: foodViewController, foodString: String)
}

class foodViewController: UIViewController {
    var foodString = ""
    var delegate:foodVCProto? = nil

    @IBOutlet weak var foodLabel: UILabel!

    @IBAction func setFood(sender: UIButton) {
        foodLabel.text = sender.titleLabel!.text!
    }
    @IBAction func saveDetails(sender: AnyObject) {
        if (delegate != nil) {
            delegate!.myVCDidFinish(self, foodString: foodLabel!.text!)
        }
        println("Save called")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foodLabel.text = foodString // Should be empty string
        println("viewDidLoad for colorSelectView")
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
