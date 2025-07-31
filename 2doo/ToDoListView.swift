//
//  ToDoListView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 30.07.25.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
  
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }
        }
        
        
    }
}

#Preview {
    ToDoListView()
}
