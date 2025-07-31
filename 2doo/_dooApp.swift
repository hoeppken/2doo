//
//  _dooApp.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import SwiftUI
import SwiftData

@main
struct _dooApp: App {
  
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
        .modelContainer(for: [TaskType.self])
    }
}
