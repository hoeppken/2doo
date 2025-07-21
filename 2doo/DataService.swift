//
//  DataService.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 21.07.25.
//

import Foundation
import SwiftData

struct DataService {
    
    //let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    let apiKey: String?
    
    func search () async -> [Quotes] {
        
        //check if api exists
        
        guard apiKey != nil else {
            return [Quotes]()
        }
        
        //create url
        if let url = URL(string: "https://zenquotes.io/api/[mode]/?option1=value") {
        
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            do {
                
                let (data, response) = try await URLSession.shared.data(for: request)
                print(String(data: data, encoding: .utf8)!)
                
                //parse json
                let decoder = JSONDecoder()
                let result =  try decoder.decode(SearchResult.self, from: data)
                return result.quotes
                
            } catch {
                print(error)
                
            }
            
        }
        return [Quotes]()
        
    }
}
