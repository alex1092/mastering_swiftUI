//
//  RotationAroundAnchors.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct RotationAroundAnchors: View {
    @State private var change = false
    
    var body: some View {
        VStack{
            TitleText("Rotation Around Anchors")
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .overlay(Text("Top Leading").foregroundColor(.white).font(.title))
                .frame(width: 200, height: 100)
                .shadow(radius: 10)
                .rotationEffect(.degrees(change ? 220 : 0), anchor: .topLeading)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .overlay(Text("BottomTrailing").foregroundColor(.white).font(.title))
                .frame(width: 200, height: 100)
                .shadow(radius: 10)
                .rotationEffect(.degrees(change ? 220 : 0), anchor: .bottomTrailing)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: change)
            
            
            Spacer()
            Button("Change"){
                change.toggle()
            }
        }
    }
}


#Preview {
    RotationAroundAnchors()
}
