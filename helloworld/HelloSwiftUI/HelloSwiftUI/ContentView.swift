//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "1", photo: "1", miles: 6),
        Hike(name: "2", photo: "2", miles: 5),
        Hike(name: "3", photo: "3", miles: 4.5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

struct HikeCellView: View {
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .frame(width: 100)
            VStack {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
