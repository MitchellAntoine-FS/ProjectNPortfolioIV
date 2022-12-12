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
    
    let title: String
    let category: String
    let airDate: String
    let imageNam: String
    let discription: String
    
    init(title: String, airDate: String, imageNam: String, category: String, discription: String) {
        
        self.title = title
        self.discription = discription
        self.airDate = airDate
        self.imageNam = imageNam
        self.category = category
    }
    
}
