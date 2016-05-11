//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Steve Cox on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var planetName: UILabel!
    
    @IBOutlet weak var planetDiameter: UILabel!
    
    @IBOutlet weak var dayLength: UILabel!
    
    @IBOutlet weak var distanceFromSun: UILabel!
    
    var planet: Planet?
    


   override func viewDidLoad() {
        super.viewDidLoad()
    
    if let planet = planet {
    updateWithPlanet(planet)
        
    }
    }
    
 
    func updateWithPlanet(planet: Planet){
        title = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        planetDiameter.text = "\(planet.diameter)"
        dayLength.text = "\(planet.dayLength)"
        distanceFromSun.text = "\(planet.millionKMsFromSun)"
    
    
    }
    

}

    

    


        // Do any additional setup after loading the view.


    //override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    
        
  /*      override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return daysOfTheWeek.count
        }
        
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)
            let day = daysOfTheWeek[indexPath.row]
            cell.textLabel?.text = day
            return cell
        }
        
        
        override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 100
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
