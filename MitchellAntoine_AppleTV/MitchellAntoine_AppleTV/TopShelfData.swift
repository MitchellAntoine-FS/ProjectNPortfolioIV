//
//  TopShelfData.swift
//  MitchellAntoine_AppleTV
//
//  Created by Antoine Mitchell on 12/10/22.
//

import Foundation

struct TVTopShelfData {
    
    //The groups here will be used to define and separate the types of content for our top shelf. This makes it easy for us to separate content, especially for the segmented style of top shelf.
    enum Group:String {
        case Pillars
        case Rocks
        case Video
        
        static let allGroups: [Group] = [.Pillars, .Rocks, .Video]
    }
    
    //Each item will be part of one of our two defined groups
    let group: Group
    
    //Each item will need a number to identify it within the group
    let number: Int
    
    //Each item will have a title we can use for display purposes.
    let title: String
    
    //This image name variable is constructed to exactly match the image names in the project. We need the group and number for other variables as well, hence why we are creating the image string this way instead of just providing it when we create an instance of TVTopShelfData
    var imageName: String {
        return "\(group.rawValue)\(number)"
    }
    //The identifier we'll use in the top shelf system. Each item past present and future must have a unique id for the OS to use for top shelf display.
    var identifier: String {
        return "\(group.rawValue)\(number)"
    }
    
    //Define a URL string for remote images
    var remoteImageURL: String = ""
    
    //Define a URL string for remote images
    var remoteVideoURL: String = ""
    
    
    //Create an image URL so that the top shelf can find our images in the file system of the OS as the top shelf runs when our app is asleep
    var localImageUrl: URL
    {
        guard let imageUrl = Bundle.main.url(forResource: imageName, withExtension: "jpg") else
        {
            fatalError("Error getting local image URL")
        }
        return imageUrl
    }
}

//This extension is used to construct all of our TVTopShelfData items and create some data sets for use later in either our top shelf or the app
extension TVTopShelfData {
    //All of the data items
    static var sampleItems: [TVTopShelfData] = {
        return[TVTopShelfData(group: .Pillars, number: 1, title: "Pillars 1"),
               TVTopShelfData(group: .Pillars, number: 2, title: "Pillars 2"),
               TVTopShelfData(group: .Pillars, number: 3, title: "Pillars 3"),
               
               TVTopShelfData(group: .Rocks, number: 1, title: "Rocks 1"),
               TVTopShelfData(group: .Rocks, number: 2, title: "Rocks 2"),
               TVTopShelfData(group: .Rocks, number: 3, title: "Rocks 3"),
               
               TVTopShelfData(group: .Video, number: 1, title: "Big Buck Bunny",
                              remoteImageURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
                              remoteVideoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
               TVTopShelfData(group: .Video, number: 2, title: "Elephant Dream",
                              remoteImageURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
                              remoteVideoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"),
               TVTopShelfData(group: .Video, number: 3, title: "Sintel",
                              remoteImageURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/Sintel.jpg",
                              remoteVideoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"),
               ]
    }()
    
    //Create a sample array of just the rock group content
    static var rockSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Rocks group.
        let pillarItems = TVTopShelfData.sampleItems.filter {$0.group == .Rocks}
        //Return an array using the prefix method. This means that however many items for the number we pass in, starting at the front of the array, are put in a new array and passed back. It's redundant in this case as we only have 3 total but if you had 100 it wouldn't make sense to put all of them in the top shelf since the user won't want to scroll through 100 items before even getting into the app.
         return Array(pillarItems.prefix(3))
    }()
    
    //Create a sample array of just the pillars group content
    static var pillarSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Pillars group.
        let pillarItems = TVTopShelfData.sampleItems.filter {$0.group == .Pillars}
        //See above for additional explaination
         return Array(pillarItems.prefix(3))
    }()
    
    //Create a sample array of just the video group content
    static var videoSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Video group.
        let pillarItems = TVTopShelfData.sampleItems.filter {$0.group == .Video}
        //See above for additional explaination
         return Array(pillarItems.prefix(3))
    }()
}

