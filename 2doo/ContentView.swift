//
//  ContentView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var toDos: [ToDo]
    @State var selectedTask : TaskType?
    //var service = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading){
                
                Text("Tasks")
                    .font(Font.largeTitle)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: AddEditView(isEditMode: false)) {
                                Image(systemName: "plus")
                            }
                        }
                    }
                    .bold()
                    
                
                ScrollView {
                    
                    ForEach(toDos) { t in
                    
                        CardView(toDo:t)
                            .onTapGesture {
                                selectedTask = selectedTask
                            
                        }
                 
                    
                     }
                    
                    
                    
                }
                
            }
        }
        
       /*NavigationLink(destination: QuotesView()) {
            Text("Show Quotes").buttonStyle(.bordered)
        }*/
        
        
   // #Preview {
     //   ContentView(tasks[]())
  //      }
    }
}


//as in the app project tracker, you have to add a AddTaskView for the user to entry a new task. This can be then picked in the picker on the add/edit view
