//
//  CounterView.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import SwiftUI

struct CounterView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("\(count)")
            Button("Increment") {
                count += 1
            }
        }
    }
}

#Preview {
    CounterView()
}
