//
//  ContentProvider.swift
//  TopShelfDisplay
//
//  Created by Antoine Mitchell on 12/10/22.
//

import TVServices

class ContentProvider: TVTopShelfContentProvider {

    override func loadTopShelfContent(completionHandler: @escaping (TVTopShelfContent?) -> Void) {
        // Fetch content and call completionHandler
        completionHandler(nil);
    }

}

