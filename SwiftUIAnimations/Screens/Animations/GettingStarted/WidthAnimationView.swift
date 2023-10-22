//
//  WidthAnimationView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct WidthAnimationView: View {
    
    @State private var change = false
    var body: some View {
    
        VStack (spacing: 20) {
            TitleText("Animating Width")
            Circle()
                .frame(width: change ? 100 : 150 )
                .foregroundColor(.orange)
                .animation(.easeInOut, value: change)
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }
        }
    }
    
}

#Preview {
    WidthAnimationView()
}
