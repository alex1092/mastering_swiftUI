//
//  WithAnimation.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//
import SwiftUI

struct WithAnimation: View {
    @State private  var change = false
    
    var body: some View {
        VStack () {
            TitleText("Example")
            SubtitleText("Part of an animation")
            BannerText("Here we tell swift ui to animate the ball ")
            
            Circle()
                .foregroundStyle(.orange)
                .frame(width:100, height: 100)
                .offset(x: 0, y: change ? 300 : 0 )
                .animation(Animation.easeInOut, value: change)
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }.padding(.bottom)
        }
    }
}

#Preview {
    WithAnimation()
}
