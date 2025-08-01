//
//  CardView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 25.07.25.
//

import SwiftUI

struct TaskCardView: View {
    

    var taski : TaskType
    var taskText : String = ""
    
    
    var body: some View {
        
        HStack {
            ZStack (){

                RoundedRectangle (cornerRadius: 15)
                    .shadow(radius: 10, x:0, y:4)
                VStack {
                    Text(taski.text).foregroundStyle(.white).font(Font.headline)
                   
                   
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                
                    
            }
            
            Image(systemName: "chevron.forward")
                .foregroundStyle(Color.gray)
        }.padding(.vertical, 10)
        
    }
}

#Preview {
    TaskCardView(taski: TaskType())
}
