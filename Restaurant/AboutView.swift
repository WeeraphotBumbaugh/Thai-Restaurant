//
//  AboutView.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/2/25.
//
import SwiftUI

struct AboutView: View {
    @State private var orders = 0
    @State private var username = ""
    @State private var reservations = 0
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome \(username), to")
                    .font(.title)
                Image("tasteOfThai")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                Text("You've ordered \(orders) times")
                    .padding(.bottom)
                    .font(.title3)
                Button("Order Now"){
                    orders += 1
                }
                .padding(.bottom)
                Button("Reset"){
                    orders = 0
                }
                TextField("Enter your name", text:$username)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                Text("Hi \(username) you have placed \(orders) orders today")
                Button("Add people to a reservation"){
                    reservations += 1
                }
                    .padding()
                Text("You have a table for \(reservations) people")
                    .padding()
                Text(String(repeating: "🍽️", count: reservations))
            }
            .navigationTitle("About Us")
        }
    }
}
#Preview {
    AboutView()
}
