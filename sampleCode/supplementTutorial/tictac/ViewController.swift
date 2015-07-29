//  ViewController.swift
//  tictac
//
//  Created by Al on 7/21/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class ViewController: UIViewController {

    var latestButton: UIButton!
    var firstTurn = true

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySubmitButton: UIButton!

    @IBOutlet weak var whosTurnLabel: UILabel!
    let oh : String = "O"
    let ex : String = "X"
    let zee : String = "-"
    var marker: String = "-"

    let ohColor:  UIColor = UIColor.greenColor()
    let exColor:  UIColor = UIColor.redColor()
    let zeeColor: UIColor = UIColor.blackColor()

    let zeeVal = 0
    let exVal  = 1
    let ohVal  = 2

    var markerColor: UIColor!
    var board: [[Int]]!  // For detecting "game over" state

    @IBAction func submitBtn(sender: UIButton) {
        mySubmitButton.enabled = false
        if (firstTurn) {
            firstTurn = false
        }

        let num = latestButton.tag
        let col = num % 3
        let row = (num - col)/3
        let subVal: Int // Submitted marker value (for 2-D array)
        println("(col,row)=(\(col),\(row))")

        latestButton?.enabled = false
        latestButton = nil
        if (marker == ex) {
            subVal = exVal
            marker = oh
            markerColor = ohColor
            whosTurnLabel.text = "Green O's turn"
        }
        else if (marker == oh) {
            subVal = ohVal
            marker = ex
            markerColor = exColor
            whosTurnLabel.text = "Red X's turn"
        }
        else {
            println("ERROR! (error code = 3)")
            return
        }

        board[row][col] = subVal
        println("board = \(board)")
        checkGameEnd()
    }

    func checkGameEnd() {
        // Check: Did one side win?
        // Check: Is game a draw?

        /* If game is over:
           1. Notify users (flash winning 3-in-a-row buttons?)
           2. Reset board[][], game area labels, and the Submit button
           3. Set turn label
           4. Update score label */
    }

    @IBAction func btnPress(sender: UIButton) {
      if (firstTurn) { btnPressFirstTurnLogic(sender) }
      else           { btnPressNormalLogic(sender)    }
    }

    func btnPressFirstTurnLogic(sender: UIButton) {
        if (latestButton == nil) {
            println("latestButton is nil")
            latestButton = sender
        }
        if (sender != latestButton!) {
            println("early exit")
            return
        }
        if (sender.currentTitle == zee) {
            marker = ex
            sender.setTitle(marker, forState: UIControlState.Normal)
            sender.setTitleColor(exColor, forState:
                UIControlState.Normal)
            latestButton! = sender
            mySubmitButton.enabled = true
        } else if (sender.currentTitle == ex) {
            marker = oh
            sender.setTitle(marker, forState: UIControlState.Normal)
            mySubmitButton.enabled = true
            sender.setTitleColor(ohColor, forState: UIControlState.Normal)
            latestButton! = sender
        } else if (sender.currentTitle == oh) {
            marker = zee
            sender.setTitle(marker, forState: UIControlState.Normal)
            mySubmitButton.enabled = false
            sender.setTitleColor(zeeColor, forState: UIControlState.Normal)
            latestButton = nil
        } else {
            println("ERROR! (error code = 1)")
        }
    }

    func btnPressNormalLogic(sender: UIButton) {
        if (latestButton == nil) {
            println("latestButton is nil")
            latestButton = sender
        }
        if (sender != latestButton!) {
            println("early exit")
            return
        }
        if (sender.currentTitle == zee) {
            sender.setTitle(marker, forState: UIControlState.Normal)
            sender.setTitleColor(markerColor, forState:
                UIControlState.Normal)
            latestButton! = sender
            mySubmitButton.enabled = true
        } else if (sender.currentTitle == marker) {
            sender.setTitle(zee, forState: UIControlState.Normal)
            mySubmitButton.enabled = false
            sender.setTitleColor(zeeColor, forState: UIControlState.Normal)
            latestButton = nil
        } else {
            println("ERROR! (error code = 2)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        marker = ex // "Red X" goes first
        markerColor = exColor

        board = [ [zeeVal, zeeVal, zeeVal],
                  [zeeVal, zeeVal, zeeVal],
                  [zeeVal, zeeVal, zeeVal] ]
     // Note: board[0][2] is the value at coords (0, 2) of the 2-D array
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
