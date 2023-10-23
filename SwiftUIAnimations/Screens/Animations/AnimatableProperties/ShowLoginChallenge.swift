//
//  ShowAMenuChallenge.swift
//  SwiftUIAnimations
//
//  Created by Alex on 23/10/2023.
//

import SwiftUI

struct ShowLoginChallenge: View {
    @State private var showLogin = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
      
            VStack(spacing: 20) {
                TitleText("Challenge")
                SubtitleText("Show Login")
                Spacer()
                Text("Already have an account?")
                Button("Login Now") {
                    showLogin.toggle()
                }.font(.body)
                
                VStack(spacing: 20) {
                    Image(systemName: "lock.shield")
                    TextField("Username", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal)
                .animation(.default, value: showLogin)
                .offset(x: showLogin ? 0 : -500)
                
                Spacer()
                Spacer()
                
            }
            .font(.title)
        }
    }
}

#Preview {
    ShowLoginChallenge()
}
