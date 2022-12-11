//
//  Movies.swift
//  MitchellAntoine_AppleTV
//
//  Created by Antoine Mitchell on 12/10/22.
//

import Foundation
import UIKit

class Shows: NSObject {
    
    /* Stored Properites */
    
    // Categories
    var anime: [String]
    var drama: [String]
    var action: [String]
    
    let title: String
    let category: String
    let airDate: String
    let imageName: String
    let discription: String
    
    init(title: String, airDate: String, imageName: String, category: String, discription: String) {
        
        self.title = title
        self.discription = discription
        self.airDate = airDate
        self.imageName = imageName
    }
    
}
