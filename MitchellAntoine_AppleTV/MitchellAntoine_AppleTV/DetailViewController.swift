//
//  DetailViewController.swift
//  MitchellAntoine_AppleTV
//
//  Created by Antoine Mitchell on 12/10/22.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var airDateLabel: UILabel!
    
    
    var show: Shows!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem ) {
        
    }
    
    
}
