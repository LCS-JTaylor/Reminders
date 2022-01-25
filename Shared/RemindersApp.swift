//
//  RemindersApp.swift
//  Shared
//
//  Created by Jackson Taylor on 2022-01-20.
//

import SwiftUI

@main
struct RemindersApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
            ContentView(store: store)
        }
    }
}
