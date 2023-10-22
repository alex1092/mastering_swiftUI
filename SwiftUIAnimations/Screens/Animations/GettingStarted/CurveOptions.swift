//
//  EaseIn.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct CurveOptions: View {
    @State private  var change = false
    
    var body: some View {
        VStack () {
            TitleText("Example")
            SubtitleText("Part of an animation")
            BannerText("CurveOptions")
            
            HStack {
                
                VStack {
                    Text("EaseInOut")
                    Circle()
                        .foregroundStyle(.orange)
                        .frame(width:50, height: 50)
                        .offset(x: 0, y: change ? 400 : 0 )
                        .animation(Animation.easeInOut, value: change)
                }
                VStack {
                    Text("EaseIn")
                    Circle()
                        .foregroundStyle(.orange)
                        .frame(width:50, height: 50)
                        .offset(x: 0, y: change ? 400 : 0 )
                        .animation(Animation.easeIn, value: change)
                }
                VStack {
                    Text("EaseOut")
                    Circle()
                        .foregroundStyle(.orange)
                        .frame(width:50, height: 50)
                        .offset(x: 0, y: change ? 400 : 0 )
                        .animation(Animation.easeOut, value: change)
                }
                VStack {
                    Text("Linear")
                    Circle()
                        .foregroundStyle(.orange)
                        .frame(width:50, height: 50)
                        .offset(x: 0, y: change ? 400 : 0 )
                        .animation(Animation.linear, value: change)
                }
             
            }
            Spacer()
            Button("Change") {
                change.toggle()
            }.padding(.bottom)
        }
    }
}

#Preview {
    CurveOptions()
}
