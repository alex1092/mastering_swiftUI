//
//  NoAmination.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct NoAmination: View {
    @State private  var change = false
    
    var body: some View {
        VStack () {
            TitleText("Example")
            SubtitleText("Part of an animation")
            BannerText("the button changes the variable then the possition of the cirlce changes")
            
            Circle()
                .foregroundStyle(.orange)
                .frame(width:100, height: 100)
                .offset(x: 0, y: change ? 300 : 0 )
            
            Spacer()
            
            Button("Change") {
                change.toggle()
            }.padding(.bottom)
        }
    }
}

#Preview {
    NoAmination()
}
