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
        
        Text("Inspire Yourself").font(.headline)
        
            List {
                ForEach (quote, id: \.id) { q in
                   
                    VStack {
                        Text(String("\"")+String(q.q ?? "nothing")+String("\""))
                        HStack {
                            Spacer()
                            Text(String("- ")+String(q.a ?? "nothing"))
                        }
                    }.onTapGesture {
                        let quoteText = q.q ?? "nothing"
                        UIPasteboard.general.string = quoteText
                    }
               
                    
                    
                }
            }
            .onAppear(perform: {
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
