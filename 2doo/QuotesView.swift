//
//  QuotesView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 23.07.25.
//

import SwiftUI

struct QuotesView: View {
    @State var quote = [Quotes]()
    var service = DataService()
    
    var body: some View {
        
            List {
                ForEach (quote, id: \.id) { q in
                    
                    Text(q.a ?? "nothing")
                    
                }
            }.onAppear(perform: {
            Task {
                let result = await service.search()
                await MainActor.run {
                    quote = result  }
            }
        })
    }
}

#Preview {
    QuotesView()
}
