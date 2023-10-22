//
//  SwiftUIView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct ChallengeView: View {
    @State private  var change = false
    var body: some View {
        TitleText("Challenge")
        Spacer()
        
        Circle()
            .foregroundColor(.orange)
            .frame(width: 50, height: 50)
            .offset(x: change ? -150 : 150, y:change ? -600 : 0)

            .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: change)
        
        
        Button("Change") {
            change.toggle()
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    
   
    }
}

#Preview {
    ChallengeView()
}
