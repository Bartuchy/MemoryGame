//
//  ThemeButton.swift
//  MemoryGame
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ThemeButton: View {
    let icon: String
    let label: String
    let colorToChange: Color
    @Binding var themeColor: Color
    
    var body: some View {
        Button(
            action: { themeColor = colorToChange},
            label: {
                VStack{
                    Image(systemName: icon).font(.title)
                    Text(label)
                }.foregroundColor(themeColor)
            })
    }
}

//#Preview {
//    ThemeButton()
//}
