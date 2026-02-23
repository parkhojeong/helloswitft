//
//  HikeDetailScreen.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import SwiftUI

struct HikeDetailScreen: View {
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted())")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailScreen(
            hike: Hike(name: "1", photo: "1", miles: 6))
    }
}
