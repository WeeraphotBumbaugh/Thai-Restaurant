//  ReservationSummary.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/7/25.

import SwiftUI

struct ReservationSummaryView: View {
    let username: String
    let guestCount: Int
    let reservationDate: Date
    let allergyNotes: String    
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 30){
                
                Text("Thank you, \(username), your reservation is confirmed for \(guestCount) people.")
                    .font(.title3)
                    .foregroundStyle(.green)
                
                Text("Name: \(username)")
                //Text("Date: \(formattedDate(date: reservationDate))")
                Text("Date: \(formattedDate(reservationDate))")
                
                Text("# of Guests: \(guestCount)")
                
                if allergyNotes.isEmpty{
                    Text("No allergies")
                } else {
                    Text("Note: We will accomodate the following allergies: \(allergyNotes)")
                }
            }
        }.navigationTitle("Reservation Summary")
            .padding()
    }
    // The underscore at the beginning removes the need for line 21
    func formattedDate(_ date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}
