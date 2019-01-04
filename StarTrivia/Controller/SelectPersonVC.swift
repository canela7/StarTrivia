//
//  ViewController.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/2/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    @IBOutlet weak var homeworldBtn: UIButton!
    @IBOutlet weak var vehiclesBtn: UIButton!
    @IBOutlet weak var starshipsBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    
    
    
    
    @IBOutlet weak var stackBg: UIView!
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackBg.layer.cornerRadius = 14
        
        //step 1: make network request
  
        //
    }
    
    @IBAction func randomClicked(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        
        personApi.getRandomPersonAlamo(id: random) { (person) in
            if let person = person {
                self.nameLbl.text = person.name
                self.heightLbl.text = person.height
                self.massLbl.text = person.mass
                self.hairLbl.text = person.hair
                self.birthYearLbl.text = person.birthYear
                self.genderLbl.text = person.gender
            }
        }
        
        
    }
    
    @IBAction func homeworldClicked(_ sender: Any) {
        
        
    }
    
    
    @IBAction func vehiclesClicked(_ sender: Any) {
        
        
    }
    
    
    @IBAction func starshipsClicked(_ sender: Any) {
        
        
    }
    
    
    @IBAction func filmsClicked(_ sender: Any) {
        
        
    }
    
    
    


}

