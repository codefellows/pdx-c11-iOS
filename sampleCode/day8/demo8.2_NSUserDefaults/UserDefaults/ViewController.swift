//  ViewController.swift
//  UserDefaults
//
//  Created by Al on 8/12/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
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
            usrName.text = usrData["Name"]
        //  println(usrData["Name"])
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadUsrData()
    }

    // Code to dimiss keyboard (covers two ways)
    @IBAction func usrNameInputEnd(sender: UITextField) {
         resignFirstResponder()
    }
    // 1. Dismiss when [Return] in on-screen kbd is clicked
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // 2. Dismiss when user touches the View outside of the UITextField (and not on another control/widget)
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event!)
        usrName.resignFirstResponder()
      //myTextField.endEditing(true)  // Also dismisses kbd
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
