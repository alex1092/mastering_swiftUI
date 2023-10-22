//
//  AnimateHueRotation.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI
struct AnimateHueRotation: View {    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {            TitleText("Animatable Properties")  
            SubtitleText("Hue")
            BannerText("Another way to change color is to change the hue on the color wheel by                       rotating the current point.",            
                       backColor: .blue, textColor: .white)
            
    Image("ColorWheel")
            
    HStack {          
        RoundedRectangle(cornerRadius: 20)   
            .foregroundStyle(.blue)
            .padding()
            .hueRotation(Angle.degrees(change ? 170 : 0)) 
            .animation(.easeInOut, value: change)
        
        Image("umbrella")
            .resizable()
            .scaledToFit()
            .hueRotation(Angle.degrees(change ? 170 : 0))
            .animation(.easeInOut, value: change)
        
    }
    Button("Change") {   
        change.toggle()       
    }
}.font(.title)
}}


#Preview {
    AnimateHueRotation()
}
