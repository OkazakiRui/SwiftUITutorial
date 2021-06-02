//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 岡崎流依 on 2021/06/02.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var fillterdLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List(fillterdLandmarks) { landmark in
                NavigationLink( destination: LandmarkDetail(landmark: landmark) ){
                    LandmarkRow(landmark: landmark)
                }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
    }
}
