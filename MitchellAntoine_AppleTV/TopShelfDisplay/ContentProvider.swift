//
//  ContentProvider.swift
//  TopShelfDisplay
//
//  Created by Antoine Mitchell on 12/10/22.
//

import TVServices

class ContentProvider: TVTopShelfContentProvider {
    
    override func loadTopShelfContent(completionHandler: @escaping (TVTopShelfContent?) -> Void) {
        
        // TODO: Create an array of TVTopShelfSectiondItem objects for each section you want to display.
              //There should be 3 in total and they are created like we did above for the inset style shelf, just with TVTopShelfSectionedItem objects instead of TVTopShelfItem objects. Don't forget to set the
                
        let scrollingAnimeData = TVTopShelfData.animeSampleItems
        let scrollingDramaData = TVTopShelfData.dramaSampleItems
        let scrollingActionData = TVTopShelfData.actionSampleItems
        
        let animeArray: [TVTopShelfSectionedItem] = scrollingAnimeData.map {
            newData in
            let animeItem = TVTopShelfSectionedItem.init(identifier: newData.identifier)
            animeItem.title = newData.title
            animeItem.setImageURL(newData.localImageUrl, for: .screenScale1x)
            animeItem.setImageURL(newData.localImageUrl, for: .screenScale2x)
            
            return animeItem
        }
        
        // TODO: With those 3 arrays you'll need to make 3 TVTopShelfItemCollection objects, 1 for each section.
          //    Don't forget to set a title on these so your section has a displayed name!


        // TODO: Create a TVTopShelfSectionedContent with those 3 TVTopShelfItemCollection objects and return it with the reply handler just as we did above
        
        // Fetch content and call completionHandler
        completionHandler(nil);
    }
    

}

