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
            VStack(spacing: 20) {
                Text("Welcome \(username), to")
                    .font(.title)
                Image("tasteOfThai")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                Text("You've ordered \(orders) times")
                    .font(.title3)
                Button("Order Now"){
                    orders += 1
                }
                .italic()
                .foregroundColor(.red)
                Button("Reset"){
                    orders = 0
                }
                .italic()
                .foregroundColor(.red)
                TextField("Enter your name", text:$username)
                    .textFieldStyle(.roundedBorder)
                Text("Hi \(username) you have placed \(orders) orders today")
                Button("Add people to a reservation"){
                    reservations += 1
                }
                .italic()
                .foregroundColor(.red)
                Text("You have a table for \(reservations) people")
                Text(String(repeating: "🍽️", count: reservations))
                NavigationLink(destination:
                                ReservationForm()) {
                    Text("Go to Reservation Form")
                        .underline()
                }
            }
            .foregroundColor(.black)
            .navigationTitle("About Us")
        }
    }
}
#Preview {
    AboutView()
}
