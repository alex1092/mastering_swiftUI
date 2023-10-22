//
//  AnimatablePropertiesChallange.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct AnimatablePropertiesChallange: View {
    @State private var isPlaying = false
    var offsetValue: CGFloat = 200
    
    var body: some View {
        VStack{
            TitleText("Challange")
            Spacer()
            
            VStack (spacing: 1){
                HStack(alignment: .bottom, spacing: 1){
                    Rectangle()
                        .frame(width:70, height: 35)
                        .offset(x: isPlaying ? -offsetValue : 0)
                    Rectangle()
                        .frame(width:35, height: 70)
                        .offset(y: isPlaying ? -offsetValue : 0)
                }.offset(x: -18)
                HStack(alignment: .top, spacing: 1){
                    Rectangle()
                        .frame(width:36, height: 72)
                        .offset(y: isPlaying ? offsetValue : 0)
                    Rectangle()
                        .frame(width:72, height: 36)
                        .offset(x: isPlaying ? offsetValue : 0)
                }.offset(x: 18)
            }.rotationEffect(.degrees(isPlaying ? 0 : -90))
                .foregroundStyle(isPlaying ? .red : .orange)
                .opacity(isPlaying ? 0 : 1)
                .animation(.default, value: isPlaying)
            
            Spacer()
            
            Button("Play"){
                isPlaying.toggle()
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
        }
    }
}

#Preview {
    AnimatablePropertiesChallange()
}
