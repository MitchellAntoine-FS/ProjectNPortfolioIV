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
            
            var imageURL: URL {
                guard let imageUrl = Bundle.main.url(forResource: show.imageNam.lowercased(), withExtension: "jpeg")
                else {
                    fatalError("Error getting local image URL")
                }
                return imageUrl
            }

            if let data = try? Data(contentsOf: imageURL) {
                if let image = UIImage(data: data) {

                    self.imageLabel.image = image
                }
            }

        }

    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem ) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

