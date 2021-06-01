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
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
