//  ViewController.swift
//  UserDefaults
//
//  Created by Al on 8/12/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class ViewController: UIViewController {
    var usrData = ["Name" : "Dave"]
    @IBOutlet weak var usrName: UITextField!

    @IBAction func saveUsrData(sender: UIButton) {
        usrData["Name"] = usrName.text
        NSUserDefaults.standardUserDefaults().setObject(usrData, forKey: "usrData")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    @IBAction func loadBtn(sender: UIButton) {
        loadUsrData()
    }

    func loadUsrData() {
        if let tmp_usrData = NSUserDefaults.standardUserDefaults().objectForKey("usrData") as? [String : String] {
            usrData = tmp_usrData
            println(usrData["Name"])
            usrName.text = usrData["Name"]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadUsrData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
