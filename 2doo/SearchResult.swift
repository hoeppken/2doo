//
//  SearchResult.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 21.07.25.
//

import Foundation

struct SearchResult: Decodable {
    
    var quotes = [Quotes]()
    
}

struct Quotes: Decodable {
    
    var q : String?
    var a : String?
    var c : String?
    var h : String?
    
}
