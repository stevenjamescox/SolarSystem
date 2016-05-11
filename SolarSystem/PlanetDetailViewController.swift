

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
        planetImage.image = UIImage(named: planet.imageName)
        planetName.text = planet.name
        planetDiameter.text = "Diameter: \(planet.diameter)"
        dayLength.text = "Day Length: \(planet.dayLength) hours"
        distanceFromSun.text = " Distance from Sun: \(planet.millionKMsFromSun) 10^6km"
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}