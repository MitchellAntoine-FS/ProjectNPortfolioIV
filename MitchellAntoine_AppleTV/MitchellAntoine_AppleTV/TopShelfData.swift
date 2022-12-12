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
        case Anime
        case Drama
        case Action
        
        static let allGroups: [Group] = [.Anime, .Drama, .Action]
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
    static var showItems: [TVTopShelfData] = {
        return[TVTopShelfData(group: .Anime, number: 1, title: "Anime 1"),
               TVTopShelfData(group: .Anime, number: 2, title: "Anime 2"),
               TVTopShelfData(group: .Anime, number: 3, title: "Anime 3"),
               TVTopShelfData(group: .Anime, number: 4, title: "Anime 4"),
               TVTopShelfData(group: .Anime, number: 5, title: "Anime 5"),
               
               TVTopShelfData(group: .Drama, number: 1, title: "Drama 1"),
               TVTopShelfData(group: .Drama, number: 2, title: "Drama 2"),
               TVTopShelfData(group: .Drama, number: 3, title: "Drama 3"),
               TVTopShelfData(group: .Drama, number: 4, title: "Drama 4"),
               TVTopShelfData(group: .Drama, number: 5, title: "Drama 5"),
               
               TVTopShelfData(group: .Action, number: 1, title: "Action 1"),
               TVTopShelfData(group: .Action, number: 2, title: "Action 2"),
               TVTopShelfData(group: .Action, number: 3, title: "Action 3"),
               TVTopShelfData(group: .Action, number: 4, title: "Action 4"),
               TVTopShelfData(group: .Action, number: 5, title: "Action 5"),
               ]
    }()
    
    //Create a sample array of just the anime group content
    static var animeSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Anime group.
        let showItems = TVTopShelfData.showItems.filter {$0.group == .Drama}
        //Return an array using the prefix method. This means that however many items for the number we pass in, starting at the front of the array, are put in a new array and passed back.
         return Array(showItems.prefix(2))
    }()
    
    //Create a sample array of just the drama group content
    static var dramaSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Drama group.
        let showItems = TVTopShelfData.showItems.filter {$0.group == .Anime}
        
         return Array(showItems.prefix(2))
    }()
    
    //Create a sample array of just the action group content
    static var actionSampleItems: [TVTopShelfData] = {
        //Filter our main data set by the Action group.
        let showItems = TVTopShelfData.showItems.filter {$0.group == .Action}
        
         return Array(showItems.prefix(2))
    }()
}

