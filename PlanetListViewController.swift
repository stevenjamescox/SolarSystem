//
//  PlanetListViewController.swift
//  SolarSystem
//
//  Created by Steve Cox on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 53
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let planetInfo = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planetInfo.name
        cell.textLabel?.textAlignment = .Center
        cell.imageView?.contentMode = .Redraw
        cell.imageView?.image = UIImage(named: planetInfo.imageName)
        cell.detailTextLabel?.text = "planet \(indexPath.row + 1) of 9"
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPlanetDetailSegue"{
            let planetDetailViewController = segue.destinationViewController as? PlanetDetailViewController
            if let selectedPlanet = self.tableView.indexPathForSelectedRow {
                let planet = PlanetController.planets[selectedPlanet.row]
                planetDetailViewController?.planet = planet
            }
        }
    }
}
