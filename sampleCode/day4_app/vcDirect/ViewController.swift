//
//  ViewController.swift
//  vcDirect
//
//  Created by Al on 7/9/15.
//  Copyright (c) 2015 Al. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func nextButton(sender: UIButton) {
        println("nextButton called")
        let vc = SecondVC(nibName: "SecondVC", bundle: nil)
        navigationController?.pushViewController(vc, animated:true)
    }

    @IBAction func showRebelButton(sender: UIButton) {
        performSegueWithIdentifier("rebel_id", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
