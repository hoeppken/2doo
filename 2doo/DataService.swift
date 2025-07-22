//
//  DataService.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 21.07.25.
//

import Foundation
import SwiftData

struct DataService {
    
    //no need of apikey so:
    //start with the func
    func search () async -> [Quotes] {
        
        //check if url exists , else just return
        guard let url = URL(string: "https://zenquotes.io/api/quotes") else {
            return [Quotes]()
        }
        
        //now comes the request and the add value for json
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "accept")
        
        do {
            
            let (data, response) = try await URLSession.shared.data(for: request)
            print(String(data: data, encoding: .utf8)!)
            
            let decoder = JSONDecoder()
            let result = try decoder.decode([Quotes].self, from: data)
            return result
        }catch {
            print(error)
        }
        return [Quotes]()
    }
    
}
