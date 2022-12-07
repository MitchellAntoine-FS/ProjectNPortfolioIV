//
//  WatchStrain.swift
//  MitchellAntoine_AppleWatch_Watch Watch App
//
//  Created by Antoine Mitchell on 12/6/22.
//

import Foundation
import SwiftUI

struct WatchStrain: Hashable, Codable {
    
    var name: String
    var effects: String
    
    private var imageName: String
    var image: Image {
            Image(imageName)
        }
}
