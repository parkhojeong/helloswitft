//
//  AtStateView.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import SwiftUI

struct AtStateView: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON": "OFF")
                    .foregroundStyle(.white)
            }).fixedSize()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(isOn ? .yellow: .black)
    }
}

#Preview {
    AtStateView()
}
