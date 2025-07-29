//
//  AddEditView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 28.07.25.
//

import SwiftUI
import SwiftData

struct AddEditView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    //var listItem : ToDo
    var isEditMode: Bool
    @State var toDo : ToDo?
    @State private var toDoText : String = ""
    
    @State var selectedTask : String = ""

    
    var body: some View {
        
        VStack (alignment : .leading, spacing : 20){
            
            Text ("Add/Edit to do list").font(.largeTitle).bold().padding(.bottom, 50)

            
            VStack (alignment : .leading, spacing : 10){
                
                Text("Select Task").font(.callout)
                
                Picker(selection: $selectedTask, label: Text("Select Task")) {
                    ForEach(["Task 1", "Task 2", "Task 3"], id: \.self) {
                        Text($0)
                    }
                }
            }
            VStack (alignment : .leading, spacing : 10){
                
                Text("What do you need to do?").font(.callout)
                
                TextField("Type to do here", text: $toDoText)
                    .textFieldStyle(.roundedBorder)
            }
            HStack{
                
                Button {
                
                    if isEditMode {
                        toDo?.text = toDoText
                
                    }else {
                        toDo?.text = toDoText
                        context.insert(toDo)
                    }
                    
                    dismiss()
                    
                } label: {
                    Text ("Save")
                }.buttonStyle(.borderedProminent).disabled(toDoText.isEmpty)
                
                Spacer()
                
                Button {
                    //delete quotes
                    
                    context.delete(toDo)
                    dismiss()
                    
                } label: {
                    Text ("Delete")
                }.buttonStyle(.plain).foregroundStyle(.red).disabled(toDoText.isEmpty)
            }
              
                
            
            
        }.padding().onAppear { if isEditMode {
            toDoText = toDo.text
        }}
        Spacer()
    }
}

/*#Preview {
    AddEditView(isEditMode: true, toDo: ToDo())
}*/
