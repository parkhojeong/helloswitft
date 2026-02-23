//
//  Hike.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
