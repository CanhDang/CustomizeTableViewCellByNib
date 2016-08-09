//
//  TableViewController.swift
//  CustomizeTableViewCellByNib
//
//  Created by HuuLuong on 8/1/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var items = [DataItem]()
    var height:CGFloat = 20.0
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
   
        let item1: DataItem = DataItem.init(imgMovieLogo: "bandOfBrothers", imgStarRating: 4.0, nameMovie: "Band Of Brothers", officialSite: "HBO")
        let item2: DataItem = DataItem.init(imgMovieLogo: "breakingBad", imgStarRating: 4.5, nameMovie: "Breaking Bad", officialSite: "BBC")
        let item3: DataItem = DataItem.init(imgMovieLogo: "cosmos", imgStarRating: 3.5, nameMovie: "Cosmos", officialSite: "FOX")
        let item4: DataItem = DataItem.init(imgMovieLogo: "planetEarth", imgStarRating: 5.0, nameMovie: "Planet Earth", officialSite: "BBC")
        let item5: DataItem = DataItem.init(imgMovieLogo: "theWire", imgStarRating: 4.5, nameMovie: "The Wire", officialSite: "HBO")
        items = [item1, item2, item3, item4, item5]
    
       
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell
        cell.lbl_movieName.text = items[indexPath.row].movieName
        cell.image_movieLogo.image = items[indexPath.row].imageMovieLogo
        cell.image_starRating.image = items[indexPath.row].imageStarRating
        cell.lbl_officialSite.text = items[indexPath.row].officialSite

        
        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 122
        
    }
    


    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        
        detailVC.stringTitle = items[indexPath.row].movieName
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
