//
//  ViewController.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/2/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {

    @IBOutlet weak var stackBg: UIView!
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackBg.layer.cornerRadius = 14
        personApi.getRandomPersonUrlSession()
    }
    
    
    
    


}

