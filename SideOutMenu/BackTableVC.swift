//
//  BackTableVC.swift
//  SideOutMenu
//
//  Created by anatoliy.kant on 14.02.16.
//  Copyright © 2016 anatoliy.kant. All rights reserved.
//

import Foundation


class BackTableVC: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Hello","Second","World"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestVC = segue.destinationViewController as! ViewController
        
        var indexPath : NSIndexPath! = self.tableView.indexPathForSelectedRow
        
        DestVC.varView = indexPath.row
    }
    
}