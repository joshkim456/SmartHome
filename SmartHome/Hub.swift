//
//  Hub.swift
//  SmartHome
//
//  Created by Kim, Joshua (WING) on 28/11/2023.
//

import Foundation

class Device {
    var isOn: Bool = false
    var power: Int = 0
    var name: String
    var isConnected: Bool = false
    
    init(_ name: String) {
        self.name = name
    }
    
    func turnOn() {
        isOn = true
    }
    
    func turnOff() {
        isOn = false
    }
}

class Light: Device {
    var colours: [String] = []
    

}

class Devices {
    var Devices: [Device] = []
    
    func add(_ device: Device) {
        if device.isConnected {
            print("Device already connected.")
        } else {
            Devices.append(device)
            device.isConnected = true
        }
    }
    
    func showConnectedDevices() {
        for Device in Devices {
            print(Device.name)
        }
    }
    
               
    
}









