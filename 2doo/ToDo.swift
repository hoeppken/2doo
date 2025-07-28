//
//  Item.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import Foundation
import SwiftData

@Model
class TaskType {
    @Attribute(.unique) var id: String
    var taskText: String = ""
    var toDo = [ToDo]()
    
    init() {
        id = UUID().uuidString
    }
}

struct ToDo: Identifiable, Decodable {
    var id: UUID = UUID()
    var text: String
    var isDone: Bool = false
}
