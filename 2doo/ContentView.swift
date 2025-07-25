//
//  ContentView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 18.07.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var toDos: [ToDo]
    @State private var selectedToDo : ToDo?
    //var service = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading){
                
                Text("Tasks")
                    .font(Font.largeTitle)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: QuotesView()) {
                                Image(systemName: "plus")
                            }
                        }
                    }
                    .bold()
                    
                
                ScrollView {
                    
                    ForEach(toDos) { t in
                    
                        CardView(toDo: t)
                            .onTapGesture {
                                selectedToDo = t
                            
                        }
                 
                    
                     }
                    
                    
                    
                }
                
            }
        }
        
       /*NavigationLink(destination: QuotesView()) {
            Text("Show Quotes").buttonStyle(.bordered)
        }*/
        
        
   // #Preview {
     //   ContentView(tasks[]())
  //      }
    }
}
