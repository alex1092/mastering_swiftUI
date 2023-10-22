//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Alex on 22/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AnimationsEntryView()) {
                    Text("Animations")
                }
                
                NavigationLink(destination: Text("Views")) {
                    Text("Veiws Mastery")
                }
            }
            .navigationBarTitle("Learn SwiftUI 🚀", displayMode: .inline)
        
        }
    }
}

#Preview {
    ContentView()
}
