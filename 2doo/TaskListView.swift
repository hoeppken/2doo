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
    @State var selectedTask : TaskType?
   
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Task List")
                    .font(Font.largeTitle.bold())
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink (destination: AddTaskView()) {
                                Image(systemName: "plus")
                            }
                        }
                    }
                ScrollView {
                    TaskCardView()
                    TaskCardView()
                    TaskCardView()
                }.padding()
                
            }
        }
    }
    
    
    //as in the app project tracker, you have to add a AddTaskView for the user to entry a new task. This can be then picked in the picker on the add/edit view
}
#Preview {
    TaskListView()
}
