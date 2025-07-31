//
//  CardView.swift
//  2doo
//
//  Created by Rafael dos Santos Varela on 25.07.25.
//

import SwiftUI

struct TaskCardView: View {
    

    var taski : TaskType
    
    
    var body: some View {
        
        HStack {
            ZStack (){

                RoundedRectangle (cornerRadius: 15)
                    .shadow(radius: 10, x:0, y:4)
                VStack {
                    Text("Some text").foregroundStyle(.white)
                    Spacer()
                   
                }
                .padding(.top, 50)
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
