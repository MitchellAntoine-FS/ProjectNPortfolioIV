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
        
        if (show != nil) {
            titleLabel.text = show.title
            discriptionLabel.text = show.discription
            airDateLabel.text = show.airDate
            
            guard let url = Bundle.main.url(forResource: show.imageNam, withExtension: "jpg")
            else {
                fatalError("Error getting local image URL")
            }
            
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                        
                    self.imageLabel.image = image
                                
                }
            }
           
        }
        
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem ) {
        
    }
    
    
}
