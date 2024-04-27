//
//  CardView.swift
//  MemoryGame
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct CardView: View {
    var content: String//  = "😄"
    @State var isFaceUp: Bool = true
    
    init(content: String) {
        self.content = content
    }
    
    var body: some View {
        let rectangle = RoundedRectangle(cornerRadius: 28)
        ZStack{
            Group{
                rectangle.fill(.white)
                rectangle.strokeBorder(style: StrokeStyle(lineWidth: 2))
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            
            rectangle.fill(.blue).opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }.aspectRatio(2.0/3.0, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          

    }
}

//#Preview {
//    CardView()
//}
