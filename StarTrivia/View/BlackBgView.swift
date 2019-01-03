//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Brian Canela on 1/2/19.
//  Copyright © 2019 Brian Canela. All rights reserved.
//

import UIKit

class BlackBgView: UIView {
    
    
    
    override func awakeFromNib() {
        
        layer.backgroundColor = BLACK_BG
        
        layer.cornerRadius = 14
        
    }
    
    
}

class BlackBgButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 14
    }
}
