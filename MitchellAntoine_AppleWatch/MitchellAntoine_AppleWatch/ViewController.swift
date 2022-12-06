//
//  ViewController.swift
//  MitchellAntoine_AppleWatch
//
//  Created by Antoine Mitchell on 12/2/22.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, WCSessionDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var strains = [Strain]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        addData()
        
        //Watch Connectivity
        if WCSession.isSupported(){
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AW01", for: indexPath)
        
        cell.textLabel?.text = strains[indexPath.row].name
        
        return cell
    }
    
    // MARK: - Delegates
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        switch activationState {
        case .notActivated:
            print("Phone WCSession Not Active")
        case .inactive:
            print("Phone WCSession Inactive")
        case .activated:
            print("Phone WCSession Active")
        default:
            print("Unknown Error - Should never happen")
        }
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        print("Session went Inactive")
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        print("Session Deactivated")
    }
    
    func addData() {
        strains.append(Strain(name: "Dosidos", effects: "Sleepy, Relaxed, Sedated", image: "dosidos.jpg"))
        strains.append(Strain(name: "Ice Cream Cake", effects: "Sleepy, Relaed hungry", image: "ice-cream.jpeg"))
        strains.append(Strain(name: "Green Crack", effects: "Paranoia, Cotton mouth, Creative", image: "greenCrack.jpeg"))
        strains.append(Strain(name: "Blue Dream", effects: "Relaxed, Cotton Mouth, Creative", image: "blueDream.jpeg"))
        strains.append(Strain(name: "Hindu Kush", effects: "Relaxed, Sleepy, Cotton Mouth", image: "hinduKush.png"))
        strains.append(Strain(name: "Gorilla Glue", effects: "Sleepy, Headache, Sedated", image: "gorillaglue.jpeg"))
        strains.append(Strain(name: "Wedding Cake", effects: "Relaxed, Aroused, Hungry", image: "weddingCake.png"))
        strains.append(Strain(name: "Skywalker OG", effects: "Relaxed, Sleepy, Sedated", image: "skywalkOG.jpeg"))
        strains.append(Strain(name: "Northern Lights", effects: "Relaxed, Sleepy, Coton mouth", image: "northernLights.jpeg"))
        strains.append(Strain(name: "Girl Scout Cookies", effects: "Relaxed, Happy, Creative", image: "girlScoutCookies.jpeg"))
    }
    


}

