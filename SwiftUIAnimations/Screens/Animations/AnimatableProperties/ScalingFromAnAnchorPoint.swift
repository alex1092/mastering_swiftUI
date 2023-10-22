//
//  ScalingFromAnAnchorPoint.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct ScalingFromAnAnchorPoint: View {
    @State private var change = false
    
    var body: some View {
        VStack{
            TitleText("Scaling From An Anchor Point")
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .overlay(Text("Anchor Top")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white))
                .scaleEffect(change ? 1 : 0.25, anchor: .top)
                .frame(width: 300, height: 150)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .overlay(Text("Scale From Right").font(.title).foregroundStyle(.white))
                .frame(width: 300, height: 150)
                .scaleEffect(change ? 0.25 : 1, anchor: .trailing)
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .frame(width: 300, height: 150)
                .overlay(Text("Scale From bottom left").font(.title).foregroundStyle(.white))
                .scaleEffect(change ? 1 : 0.25, anchor: .bottomLeading)
                .animation(.easeIn, value: change)
        Spacer()
            
        Button("Change") {
            change.toggle()
        }
            
        }
    }
}



#Preview {
    ScalingFromAnAnchorPoint()
}
