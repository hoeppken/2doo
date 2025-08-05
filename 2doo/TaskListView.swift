//
//  ContentView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import SwiftUI
import SwiftData

struct TaskListView: View {
    
    @Query private var tasks: [TaskType]
    @State private var selectedTask : TaskType?
    @State private var isEditMode = false
    var taskText : String = ""
    
   
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Task List")
                    .font(Font.largeTitle.bold())
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink (destination: AddEditTaskView(task: TaskType(), isEditMode: false)) {
                                Image(systemName: "plus")
                            }
                        }
                    }
                ScrollView {
                    
                    ForEach(tasks) { t in
                        TaskCardView(taski: t)
                            .simultaneousGesture(
                                TapGesture()
                                    .onEnded {
                                        isEditMode = false
                                        selectedTask = t
                                        
                                    }
                            )
                            .simultaneousGesture(
                                LongPressGesture()
                                    .onEnded { _ in
                                        isEditMode = true
                                        selectedTask = t
                                    }
                            )
                    }
                    
                }.padding()
                
            }.navigationDestination(item: $selectedTask) { t in
                if isEditMode {
                    AddEditTaskView(task: t, isEditMode: true)
                } else {
                    ToDoListView(taski: TaskType(), toDoItems: Double())
                }
                
            }
        }
    }
    
    
    //as in the app project tracker, you have to add a AddTaskView for the user to entry a new task. This can be then picked in the picker on the add/edit view
}
#Preview {
    TaskListView()
}
