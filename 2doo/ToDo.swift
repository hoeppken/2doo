//
//  ToDo.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 31.07.25.
//

import Foundation
import SwiftData

@Model

class ToDo : Identifiable {
   
    @Attribute(.unique) var  id: String
    var text = ""
    var isDone: Bool = false
    
    init() {
        id = UUID().uuidString
    }
    
}
