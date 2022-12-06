//
//  Strain.swift
//  MitchellAntoine_AppleWatch
//
//  Created by Antoine Mitchell on 12/5/22.
//

import UIKit

class Strain: NSObject {
    
    /* Stored Properties */
    let name: String
    let effects: String
    let image: String
    
    /* Initialziers */
    init(name: String, effects: String, image: String) {
        self.name = name
        self.effects = effects
        self.image = image
    }

}
