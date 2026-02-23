//
//  AtStateList.swift
//  HelloSwiftUI
//
//  Created by hj on 2/23/26.
//

import SwiftUI

struct AtStateList: View {
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    friends.append(name)
                    name = ""
                }
            
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            
            Spacer()
        }.padding()
    }
}

#Preview {
    AtStateList()
}
