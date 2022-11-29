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

class ViewController: UIViewController, CBPeripheralManagerDelegate {
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        if peripheral.state == CBManagerState.poweredOn {
            svc = CBMutableService.init(type: soundboardServiceUUID, primary: true)
            
            let props : CBCharacteristicProperties = [.read, .notify]
            let permissions : CBAttributePermissions = [.readable]
            
            mChar = CBMutableCharacteristic.init(type: soundboardCharacteristicUUID, properties: props, value: nil, permissions: permissions)
            svc?.characteristics = [mChar!]
            pMgr?.add(svc!)
            pMgr?.delegate = self
            
            let adData = [CBAdvertisementDataLocalNameKey:"Not SensorTag", CBAdvertisementDataServiceUUIDsKey:[soundboardServiceUUID]] as [String:Any]
            pMgr?.startAdvertising(adData)
        }
    }
    
    func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic) {
        
        self.btnOne.isEnabled = true
        self.btnTwo.isEnabled = true
        self.btnThree.isEnabled = true
        self.btnFour.isEnabled = true
        self.btnFive.isEnabled = true
        self.btnSix.isEnabled = true
        
        if (btnOne.isSelected || btnTwo.isSelected || btnThree.isSelected
            || btnFour.isSelected || btnFive.isSelected || btnSix.isSelected) {
        
        peripheral.updateValue(self.mVal!, for: self.mChar!, onSubscribedCentrals: nil)
            }
    }
    
    func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest) {
        request.value = mVal
        peripheral.respond(to: request, withResult: .success)
        
    }
    
    func peripheralManager(_ peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?) {
        print("added service")
    }
    
    func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?) {
        print("advertising")
    }
    
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    
    var pMgr : CBPeripheralManager?
    var svc : CBMutableService?
    var mChar : CBMutableCharacteristic?
    var mVal : Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pMgr = CBPeripheralManager.init(delegate: self, queue: nil)
        
        // Disable buttons until a connection is made
        self.btnOne.isEnabled = false
        self.btnTwo.isEnabled = false
        self.btnThree.isEnabled = false
        self.btnFour.isEnabled = false
        self.btnFive.isEnabled = false
        self.btnSix.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Set buttons to a string of the numeric values 1-6.
    @IBAction func buttonOne(_ sender: UIButton) {
        // Assign value
        self.mVal = "1".data(using: .utf8)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        // Assign value
        self.mVal = "2".data(using: .utf8)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        // Assign value
        self.mVal = "3".data(using: .utf8)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        // Assign value
        self.mVal = "4".data(using: .utf8)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        // Assign value
        self.mVal = "5".data(using: .utf8)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        // Assign value
        self.mVal = "6".data(using: .utf16)
        // Update Characteristic
        pMgr?.updateValue(mVal!, for: mChar!, onSubscribedCentrals: nil)
    }
    
}

