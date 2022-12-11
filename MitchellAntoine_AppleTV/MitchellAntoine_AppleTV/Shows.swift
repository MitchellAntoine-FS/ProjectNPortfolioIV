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
    let category: String
    let title: String
    let discription: String
    let airDate: String
    let imageName: String
    
    init(category: String, title: String, discription: String, airDate: String, imageName: String) {
        self.category = category
        self.title = title
        self.discription = discription
        self.airDate = airDate
        self.imageName = imageName
    }
    
}
