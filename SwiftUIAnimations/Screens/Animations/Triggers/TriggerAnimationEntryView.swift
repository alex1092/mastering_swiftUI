//
//  TriggerAnimationEntryView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 23/10/2023.
//

import SwiftUI

struct TriggerAnimationEntryView: View {
    var body: some View {
        List {
            NavigationLink(destination: Text("Trigger Animations")) {
                Text("Trigger Animations")
            }
        }
    }
}

#Preview {
    TriggerAnimationEntryView()
}
