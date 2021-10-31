//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/14.
//

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ListView(viewmodel: ViewModel())
        }
    }
}
