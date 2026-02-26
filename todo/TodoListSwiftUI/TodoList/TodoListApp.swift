//
//  TodoListApp.swift
//  TodoList
//
//  Created by hj on 2/20/26.
//

internal import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
