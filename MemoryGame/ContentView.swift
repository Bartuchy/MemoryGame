//
//  ContentView.swift
//  MemoryGame
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var contentArray = ["😄", "😄", "😂", "😂", "💀", "💀", "👍", "👍"]
    @State var content = "😄"
    @State var cardsCount = 4
    
    var body: some View {
        VStack {
            title
            Spacer()
            cardDisplay
            cardsNumberAdjuster
        }
        .padding()
    }
    
    var title: some View {
        Text("Memo").font(.largeTitle)
    }
    
    var cardDisplay: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
                ForEach(0 ..< cardsCount, id: \.self) { i in
                    CardView(content: contentArray[i])
                }
            }.foregroundColor(.blue)
        }
    }
    
    var cardsNumberAdjuster: some View {
        HStack{
            adjustCardNumber(by: -2, symbol: "minus.square")
            Spacer()
            adjustCardNumber(by: 2, symbol: "plus.square")
        }
        .padding()
    }
    
    func adjustCardNumber(by offset: Int, symbol: String) -> some View {
        Button(action: {cardsCount += offset}, label: {Image(systemName: symbol)})
            .disabled(cardsCount + offset < 2 || cardsCount + offset >= contentArray.count)
    }
    
//    var themeButtons: some View {
//        HStack {
//            //ThemeButton()icon: "cloud.sun.fill", label: "Motyw 1"
//        }
//    }
}

#Preview {
    ContentView(content: "😄")
}
