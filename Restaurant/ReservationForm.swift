//
//  ReservationForm.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/2/25.
//

import SwiftUI

struct ReservationForm: View {
    
    @State private var username: String = ""
    @State private var guestCount: Int = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Form{
                    Section(header: Text("Reservation Details")){
                        TextField("Enter your name", text: $username)
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    }
                    .navigationTitle("Reservation")
                }
            }
        }
    }
}

#Preview {
    ReservationForm()
}
