//
//  ModelData.swift
//  MitchellAntoine_AppleWatch_Watch Watch App
//
//  Created by Antoine Mitchell on 12/6/22.
//

import Foundation

var watchStrains = [WatchStrain]()

func addData() {
    watchStrains.append(WatchStrain(name: "Dosidos", effects: "Sleepy, Relaxed, Sedated", imageName: "dosidos.jpg"))
    watchStrains.append(WatchStrain(name: "Ice Cream Cake", effects: "Sleepy, Relaed hungry", imageName: "ice-cream.jpeg"))
    watchStrains.append(WatchStrain(name: "Green Crack", effects: "Paranoia, Cotton mouth, Creative", imageName: "greenCrack.jpeg"))
    watchStrains.append(WatchStrain(name: "Blue Dream", effects: "Relaxed, Cotton Mouth, Creative", imageName: "blueDream.jpeg"))
    watchStrains.append(WatchStrain(name: "Hindu Kush", effects: "Relaxed, Sleepy, Cotton Mouth", imageName: "hinduKush.png"))
    watchStrains.append(WatchStrain(name: "Gorilla Glue", effects: "Sleepy, Headache, Sedated", imageName: "gorillaglue.jpeg"))
    watchStrains.append(WatchStrain(name: "Wedding Cake", effects: "Relaxed, Aroused, Hungry", imageName: "weddingCake.png"))
    watchStrains.append(WatchStrain(name: "Skywalker OG", effects: "Relaxed, Sleepy, Sedated", imageName: "skywalkOG.jpeg"))
    watchStrains.append(WatchStrain(name: "Northern Lights", effects: "Relaxed, Sleepy, Coton mouth", imageName: "northernLights.jpeg"))
    watchStrains.append(WatchStrain(name: "Girl Scout Cookies", effects: "Relaxed, Happy, Creative", imageName: "girlScoutCookies.jpeg"))
    
}



