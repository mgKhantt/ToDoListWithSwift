//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Khant Phone Naing  on 26/12/2024.
//

import SwiftUI
import Firebase

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
