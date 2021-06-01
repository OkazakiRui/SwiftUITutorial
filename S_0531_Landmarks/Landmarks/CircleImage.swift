//
//  CircleImage.swift
//  Landmarks
//
//  Created by 岡崎流依 on 2021/05/31.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("sea1")
            .resizable()
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
