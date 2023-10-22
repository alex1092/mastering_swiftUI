//
//  TextSizeAnimationView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct TextSizeAnimationView: View {
    @State private var change = false
    var body: some View {
        VStack{
            TitleText("Text Size")
            Spacer()
            Text("Du Má!")
                .font(.system(size: change ? 100 : 15 ))
                .animation(.easeInOut, value: change)
            Spacer()
            Button("Change") {
                change.toggle()
            }
        }
    }
}

#Preview {
    TextSizeAnimationView()
}
