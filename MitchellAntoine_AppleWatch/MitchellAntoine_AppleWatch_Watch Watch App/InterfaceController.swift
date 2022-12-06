//
//  InterfaceController.swift
//  MitchellAntoine_AppleWatch_Watch Watch App
//
//  Created by Antoine Mitchell on 12/5/22.
//

import Foundation
import WatchConnectivity
import WatchKit

class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects.
        let session = WCSession.default
        session.delegate = self
        session.activate()
    }
    
    override func willActivate() {
        // Called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // Called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
        switch activationState {
        case .notActivated:
            print("Watch WCSession Not Active")
        case .inactive:
            print("Watch WCSession Inactive")
        case .activated:
            print("Watch WCSession Active")
        default:
            print("Unknown Error")
        }
    }
    
    
}
