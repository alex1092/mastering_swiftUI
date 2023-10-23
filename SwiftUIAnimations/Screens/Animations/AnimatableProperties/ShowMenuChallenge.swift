//
//  ShowMenuChallenge.swift
//  SwiftUIAnimations
//
//  Created by Alex on 23/10/2023.
//

import SwiftUI

struct ShowMenuChallenge: View {
    @State private var showMenu = false
    
    var body: some View {
        
        
        VStack (spacing: 20) {
            TitleText("Challenge")
            SubtitleText("Show A Menu")

            Button("Open Menu") {
                showMenu.toggle()
            }
            Spacer()
            VStack(spacing: 20) {
                Image(systemName: "line.horizontal.3")
                Text("Menu!")
                Spacer()
            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
            .padding(.horizontal)
            .foregroundStyle(.white)
            .offset(x: 0, y: showMenu ? 0 : 250)
            .opacity(showMenu ? 1 : 0)
            .scaleEffect(showMenu ? 1 : 0.15, anchor: .bottom)
            .animation(.default, value: showMenu)
    
            
        }
    }
}

#Preview {
    ShowMenuChallenge()
}
