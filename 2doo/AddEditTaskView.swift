//
//  AddTaskView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 29.07.25.
//

import SwiftUI
import SwiftData

struct AddEditTaskView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    var task : TaskType
    @State var taskText : String = ""
    var isEditMode: Bool
    
    var body: some View {
        
        TextField("Task", text: $taskText)
            .textFieldStyle(.roundedBorder)
            .onAppear {
                taskText = task.text
            }
        HStack{
            
            Button {
                if isEditMode {
                    
                    task.text = taskText
                } else {
                    task.text = taskText
                    context.insert(task)
                }
                
                dismiss()
                
            } label: {
                Text ("Save")
            }.buttonStyle(.borderedProminent).disabled(taskText.isEmpty)
            
            Spacer()
            
            Button {
                //delete quotes
                
                context.delete(task)
                dismiss()
                
            } label: {
                Text ("Delete")
            }.buttonStyle(.plain).foregroundStyle(.red).disabled(taskText.isEmpty)
        }
    }
}

#Preview {
    AddEditTaskView(task: TaskType(), isEditMode: true)
}
