//
//  LoginView.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/5/25.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn: Bool
    @Binding var username: String
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 30){
                Image("tasteOfThai")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                
                TextField("Enter your name: ", text: $username)
                    .textFieldStyle(.roundedBorder)
                
                Button("Log In"){
                    if username == "Weeraphot" {
                        isLoggedIn = true
                    }
                }
                
            }
        }
        .navigationTitle("Login")
    }
}

//#Preview {
//    LoginView()
//}
