//
//  SearchResult.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 21.07.25.
//

import Foundation


struct Quotes: Decodable, Identifiable {
    
    var id = UUID()
    var q : String?
    var a : String?
    var c : String?
    var h : String?
    
    private enum CodingKeys : String, CodingKey {
        case q = "q"
        case a = "a"
        case c = "c"
        case h = "h"
    }
    
}
