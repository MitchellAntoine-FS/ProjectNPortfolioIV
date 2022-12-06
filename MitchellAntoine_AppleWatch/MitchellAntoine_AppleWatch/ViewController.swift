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
        
        
        //Watch Connectivity
        if WCSession.isSupported(){
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AW01", for: indexPath)
        
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
    


}

