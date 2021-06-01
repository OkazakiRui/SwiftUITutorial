//
//  Landmark.swift
//  Landmarks
//
//  Created by 岡崎流依 on 2021/05/31.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Codable, Hashable {
    var id:Int
    var name:String
    var park:String
    var state:String
    var description:String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var latitude:Double
        var longitude: Double
    }
    
    private var coordinate:Coordinates
    var locationCoordinate:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}
