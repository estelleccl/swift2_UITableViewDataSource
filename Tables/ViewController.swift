//
//  ViewController.swift
//  Tables
//
//  Created by Jason Khong on 11/9/15.
//  Copyright © 2015 ApptivityLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//ViewController will adopt UITableViewDataSource protocol
extension ViewController : UITableViewDataSource {
    //what are the protocol methods that i must conform to
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    //numberOfRowsInSection
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //will still listening to 5 rows - eventhou the textlabel only upto row 3
        return 5
    }
    
    //cellForRowAtIndexPath - what is the cell that I should display for the row at the index path(table section at row grouping pairs - sec 0 row 1/sec 0 row 2)
    //able to add footer for section
    
    //what is the cell for the row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        //custom cell
        if indexPath.row == 0 {
            cell.textLabel?.text = "Row Zero"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Row One"
        } else if indexPath.row == 2 {
            cell.textLabel?.text = "Row Two"
        }
        
        cell.textLabel?.text = ""
        return cell
    }
}

//respond on click on the cell
extension ViewController: UITableViewDelegate {

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("User selected row \(indexPath.row)")
    }
}