//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 岡崎流依 on 2021/06/02.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
//        List {
//            ForEach(0 ..< landmarks.count) {(row:Int) in
//                LandmarkRow(landmark: landmarks[row])
//            }
//        }
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
            List(landmarks) { landmark in
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
