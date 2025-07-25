//
//  Item.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import Foundation
import SwiftData

@Model
class ToDo {
    @Attribute(.unique) var id: String
    var toDoText: String = ""
    
    init() {
        id = UUID().uuidString
    }
}
