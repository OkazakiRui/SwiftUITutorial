//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 岡崎流依 on 2021/06/02.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            FavoriteButton(isSet: .constant(true))
            FavoriteButton(isSet: .constant(false))
        }
        .previewLayout(.fixed(width: 20, height: 20))
    }
}
