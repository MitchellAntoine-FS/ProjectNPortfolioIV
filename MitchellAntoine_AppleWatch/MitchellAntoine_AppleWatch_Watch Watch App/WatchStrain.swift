//
//  WatchStrain.swift
//  MitchellAntoine_AppleWatch_Watch Watch App
//
//  Created by Antoine Mitchell on 12/6/22.
//

import Foundation
import SwiftUI

class WatchStrain: NSObject {
    
    var name: String
    var effects: String
    
    private var imageName: String
    var image: Image {
            Image(imageName)
        }
    
    init(name: String, effects: String, imageName: String) {
        self.name = name
        self.effects = effects
        self.imageName = imageName
    }
}
