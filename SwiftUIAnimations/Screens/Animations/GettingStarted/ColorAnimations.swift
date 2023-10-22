//
//  ColorAnimations.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct ColorAnimations: View {
    @State private var change = false
    
    var body: some View {
        VStack{
            TitleText("Color Animations")
            SubtitleText("Color Change")
            
            BannerText("You can animate color changes too. You can use the foregroundColor modifier or the accentColor modifier.")
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(change ? .orange : .red)
                .animation(.default, value: change)
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }
        }
    }
}

#Preview {
    ColorAnimations()
}
