//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Steve Cox on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var planetImageSpot: UIImageView!
    
    @IBOutlet weak var planetDayLengthLabel: UILabel!
    
    @IBOutlet weak var planetDistanceFromSunLabel: UILabel!
    
    @IBOutlet weak var planetDiameterLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        if let planet = planet{
            updateWithPlanet(planet)
             super.viewDidLoad()
            
        }
    }
    
    func updateWithPlanet(planet: Planet){
    
        planetNameLabel.text = planet.name
        planetImageSpot.image = UIImage(named: planet.imageName)
        planetDayLengthLabel.text = "Length of day: \(planet.dayLength)"
        planetDistanceFromSunLabel.text = "Distance from Sun: \(planet.millionKMsFromSun)"
        planetDiameterLabel.text = "Diameter: \(planet.diameter)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
