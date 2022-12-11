//
//  StrainRow.swift
//  MitchellAntoine_AppleWatch_Watch Watch App
//
//  Created by Antoine Mitchell on 12/6/22.
//

import SwiftUI

struct StrainRow: View {
    var watchStrain: WatchStrain
    
    var body: some View {
        VStack {
            watchStrain.image
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}

struct StrainRow_Previews: PreviewProvider {
    static var previews: some View {
        StrainRow(watchStrain: watchStrains[0])
    }
}
