//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/2/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import Foundation



class PersonApi {
    
    
    func getRandomPersonUrlSession(){
        
      
        
        guard let url = URL(string: PERSON_URL) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            //if request is successful then error will be nil
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String: Any] else { return }
                print(json)
                
            }catch {
                debugPrint(error.localizedDescription)
                return
            }
            
            
            print("Data = \(data)")
            print("Response = \(response)")
        }
        task.resume()
    }
    
    
}
