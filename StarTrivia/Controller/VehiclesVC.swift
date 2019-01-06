//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/3/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
   
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var makerLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var crewLbl: UILabel!
    @IBOutlet weak var passengerLbl: UILabel!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
    
    var person: Person!
    let api = VehicleApi()
    var vehicles = [String]()
    
    var currentVehicle = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vehicles = person.vehicleUrls
        
        nextBtn.isEnabled = vehicles.count > 1
        
        previousBtn.isEnabled = false
        
        guard let firstVehicle = vehicles.first else {return}
        getVehicle(url: firstVehicle)
        
    }
    
    func getVehicle(url: String) {
        api.getVehicle(url: url) { (vehicle) in
            if let vehicle = vehicle {
             self.setUpView(vehicle: vehicle)
            }
        }
    }
    
    
    
    func setUpView(vehicle: Vehicle) {
        nameLbl.text = vehicle.name
        modelLbl.text = vehicle.model
        makerLbl.text = vehicle.manufacturer
        costLbl.text = vehicle.cost
        lengthLbl.text = vehicle.length
        speedLbl.text = vehicle.speed
        crewLbl.text = vehicle.crew
        passengerLbl.text = vehicle.passengers
    }
    


    @IBAction func previousClicked(_ sender: Any) {
        
        currentVehicle -= 1
        setButtonSet()
        
        
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        currentVehicle += 1
        setButtonSet()
        
    }
    
    
    func setButtonSet() {
        
        nextBtn.isEnabled = currentVehicle == vehicles.count - 1 ? false : true
        
        previousBtn.isEnabled = currentVehicle == 0 ? false : true
        
//        if currentVehicle == 0 {
//            previousBtn.isEnabled = false
//        }else {
//            previousBtn.isEnabled = true
//        }
//
//        if currentVehicle == vehicles.count - 1 {
//            nextBtn.isEnabled = false
//        }else {
//            nextBtn.isEnabled = true
//        }

        
        
        getVehicle(url: vehicles[currentVehicle])
        
    }
    
    
}
