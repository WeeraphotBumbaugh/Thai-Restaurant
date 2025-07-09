//
//  MainView.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/5/25.
//

import SwiftUI

struct MainView: View {
    
    @State private var isLoggedIn = false
    @State private var username = ""
    
    var body: some View {
        NavigationStack{
            if isLoggedIn {
                VStack(spacing: 30){
                    Text("Welcome, \(username)")
                        .font(.title)
                    
                    NavigationLink("Make a Reservation", destination: ReservationForm(username: $username))
                    
                    NavigationLink("About Us", destination: AboutView())
                    
                    Button("Logout"){
                        isLoggedIn = false
                        username = ""
                    }
                }
            } else {
                LoginView(isLoggedIn: $isLoggedIn, username: $username)
            }
        }
        .navigationTitle("Login")
    }
}

#Preview {
    MainView()
}
