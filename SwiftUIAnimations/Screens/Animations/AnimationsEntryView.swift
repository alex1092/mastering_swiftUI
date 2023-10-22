//
//  AnimationsEntryView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct AnimationsEntryView: View {
    var body: some View {
            List{
                Section(header: Text("Getting Started")){
                    NavigationLink(destination: NoAmination()) {
                        Text("No Animation")
                    }
                    NavigationLink(destination: WithAnimation()) {
                        Text("With Animation")
                    }
                    NavigationLink(destination: ChallengeView()) {
                        Text("Challenge")
                    }
                }
                
                Section(header:Text("Animation Types"))
                {
                    NavigationLink(destination: CurveOptions()) {
                        Text("Curve Options")
                    }
                    NavigationLink(destination: WidthAnimationView()) {
                        Text("Width Animation")
                    }
                    NavigationLink(destination:
                                    ColorAnimations()) {
                        Text("Color Animations")
                    }
                    NavigationLink(destination: RotationAroundAnchors()) {
                        Text("Rotation Around Anchors")
                    }
                    NavigationLink(destination: ScalingFromAnAnchorPoint()){
                        Text("Scale From Anchors")
                    }
                    NavigationLink(destination: AnimatablePropertiesChallange()) {
                        Text("Animatable Properties Challenge")
                    }
                }
            }
        }
}

#Preview {
    AnimationsEntryView()
}
