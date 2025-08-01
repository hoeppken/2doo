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
    var text: String = ""
    var toDo : [ToDo] = [ToDo]()
    
    init() {
        id = UUID().uuidString
    }
}


