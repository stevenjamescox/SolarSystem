//
//  PlanetLIstTableViewController.swift
//  SolarSystem
//
//  Created by Steve Cox on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let solarSystemNames = PlanetController.planets[indexPath.row].name
        cell.textLabel?.text = solarSystemNames
        
        return cell
    }


   
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "toPlanetDetail" {
            if let planetDetailViewController = segue.destinationViewController as? PlanetDetailViewController,
                let selectedIndex = self.tableView.indexPathForSelectedRow {
            
                let planet = PlanetController.planets[selectedIndex.row]
                planetDetailViewController.planet = planet
            
            }
            }
        
        }
    
    
    }
        

    


