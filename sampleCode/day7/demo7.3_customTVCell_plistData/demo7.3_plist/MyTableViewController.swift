//  MyTableViewController.swift
//  demo7.3_plist
//
//  Created by Al on 7/29/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class MyTableViewController: UITableViewController {

    var dict: NSDictionary!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

        // Add margin to top of table inside its view
        self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
      //self.tableView.setContentOffset(p, animated: false)

        // Load data into table
        let path = NSBundle.mainBundle().pathForResource("myData", ofType: "plist")!
        dict = NSDictionary(contentsOfFile: path)!
        println("dict.count = \(dict.count)")
        let tmpLabel: AnyObject = dict.objectForKey("Item0")!.objectForKey("label")!
        let tmpDetails: AnyObject = dict.objectForKey("Item0")!.objectForKey("details")!
        println("Item0 label = \(tmpLabel)")
        println("Item0 label = \(tmpDetails)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return dict.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath) as! MyTableViewCell

        // Configure the cell...
        let key: String = "Item\(indexPath.row)"
        let tmpLabel: String = dict.objectForKey(key)!.objectForKey("label")! as! String
        let tmpDetails: String = dict.objectForKey(key)!.objectForKey("details")! as! String
        let tmpImage: String = dict.objectForKey(key)!.objectForKey("image")! as! String
        cell.cellLabel.text   = tmpLabel
        cell.cellDetails.text = tmpDetails
        cell.cellImage.image  = UIImage(named: tmpImage)

        switch tmpLabel {
        case "Fog":
            cell.cellLabel.textColor   = UIColor.whiteColor()
            cell.cellDetails.textColor = UIColor.whiteColor()
        case "Mountains":
            cell.cellLabel.textColor   = UIColor.yellowColor()
            cell.cellDetails.textColor = UIColor.yellowColor()
        default:
            1
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
