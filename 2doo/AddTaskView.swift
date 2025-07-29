//
//  AddTaskView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 29.07.25.
//

import SwiftUI

struct AddTaskView: View {
    @State var taskText = ""
    
    var body: some View {
        TextField("Task", text: $taskText)
    }
}

#Preview {
    AddTaskView()
}
