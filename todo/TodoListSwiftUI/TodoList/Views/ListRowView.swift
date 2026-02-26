//
//  ListRowView.swift
//  TodoList
//
//  Created by hj on 2/20/26.
//


internal import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    var item1 = ItemModel(title: "first", isCompleted: false)
    var item2 = ItemModel(title: "second", isCompleted: true)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    
}
