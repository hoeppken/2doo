//
//  AddEditView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 28.07.25.
//

import SwiftUI
import SwiftData

struct EditTaskView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    var isEditMode: Bool
    
    
    
    var body: some View {
        
        Text("Edit")
        
    }
}
    #Preview {
        EditTaskView(isEditMode: true)
    }

