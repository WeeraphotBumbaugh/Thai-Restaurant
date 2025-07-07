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
                        if username.trimmingCharacters(in: .whitespaces).isEmpty {
                            Text("Please enter a username")
                                .foregroundStyle(.red)
                        }
                        
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                        
                        if guestCount > 5 {
                            Text("For large parties, we will contact you.")
                                .foregroundStyle(.orange)
                                .font(.caption)
                        }
                        
                        Button("Confirm reservation") {
                                            }
                            .disabled(username.trimmingCharacters(in: .whitespaces).isEmpty || guestCount == 0)
                        
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
