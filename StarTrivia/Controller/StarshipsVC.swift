//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/3/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {

    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         print(person.name)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
