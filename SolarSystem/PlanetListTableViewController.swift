

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let solarSystemNames = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = solarSystemNames.name
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .ScaleAspectFill
        cell.imageView?.image = UIImage(named: solarSystemNames.imageName)
        
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


    


