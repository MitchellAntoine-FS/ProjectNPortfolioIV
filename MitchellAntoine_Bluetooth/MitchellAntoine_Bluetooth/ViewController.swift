//
//  ViewController.swift
//  MitchellAntoine_Bluetooth
//
//  Created by Antoine Mitchell on 11/26/22.
//

import UIKit
import CoreBluetooth

let soundboardServiceUUID = CBUUID(string: "06B280C1-419D-4D87-810E-00D88B506717")
let soundboardCharacteristicUUID = CBUUID(string: "CD570797-087C-4008-B692-7835A1246377")

class ViewController: UIViewController, CBPeripheralManagerDelegate, CBPeripheralDelegate {
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        if peripheral.state == CBManagerState.poweredOn {
            svc = CBMutableService.init(type: soundboardServiceUUID, primary: true)
            
            let props : CBCharacteristicProperties = [.read, .notify, .write]
            let permissions : CBAttributePermissions = [.readable, .writeable]
            
            myChar = CBMutableCharacteristic.init(type: soundboardCharacteristicUUID, properties: props, value: nil, permissions: permissions)
        }
    }
    
    var pMgr : CBPeripheralManager?
    var svc : CBMutableService?
    var myVal : Data? = "initial".data(using: .ascii)
    var myChar : CBMutableCharacteristic?
    
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pMgr = CBPeripheralManager.init(delegate: self, queue: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
    }
    
}

