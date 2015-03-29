//
//  CardapioTableViewController.swift
//  Cardapios
//
//  Created by Weles Siqueira on 23/11/14.
//  Copyright (c) 2014 Weles Siqueira. All rights reserved.
//

import UIKit

class CardapioTableViewController: UITableViewController {

    var listaCardapio : Array<String> = ["Ovos Mexidos","Risoto de Cogumelo","Hamburguer","Sanduiche","macarrão"]
    
    var listaThumb    : [String] = ["ovo","risoto","hamburguer","sandwich","macarrao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return listaCardapio.count
    }


    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cardapioCell", forIndexPath: indexPath) as UITableViewCell

        //cell.backgroundColor = UIColor(red: 0, green: 0.5, blue: 50, alpha: 0.7)
        //cell.textLabel.textColor = UIColor.whiteColor()
        
        if indexPath.row % 2 == 0{
            cell.textLabel.textColor = UIColor.redColor()
        }
        cell.textLabel.text  = listaCardapio[indexPath.row]
        cell.imageView.image = UIImage(named: listaThumb[indexPath.row])
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {

        
        return indexPath.row % 2 == 0
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {

            listaCardapio.removeAtIndex(indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            self.tableView.reloadData()
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    
        // Return NO if you do not want the item to be re-orderable.
        return indexPath.row % 2 == 0
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
