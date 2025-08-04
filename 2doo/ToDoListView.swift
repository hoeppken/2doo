//
//  ToDoListView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 30.07.25.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    
    var taski : TaskType
    var toDoItems : Double = 0
    
  
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text(taski.text)
                        .font(.headline)
                    Text(String(toDoItems))
                        
                }
                List {
                    HStack {
                        Text("Hello, World!")
                        Spacer()
                        Image(systemName: "checkmark.square")
                    }
                    
                }
            }
        }
        
        
    }
}

#Preview {
    ToDoListView(taski: TaskType(), toDoItems: 10)
}
