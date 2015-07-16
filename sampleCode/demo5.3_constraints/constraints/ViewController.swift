//  ViewController.swift
//  constraints
//
//  Created by Al on 7/14/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func UserTextInput(sender: UITextField) {
        resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* delegate. To ignore effect, change  return value to false. */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
