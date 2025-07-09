//  ReservationForm.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/2/25.

import SwiftUI

struct ReservationForm: View {
    //Use @State when you want to rerender the page if something changes
    @Binding var username: String
    @State private var guestCount: Int = 1
    @State private var reservationDate = Date()
    @State private var allergyNotes: String = ""
    @State private var showSummary = false
    //Don't use @State when it's things like validations/logic/constants
    private var nameValidation: Validation.ValidationResult {
        Validation.isValidName(username)
    }
    private var guestCountValidation: Validation.ValidationResult {
        Validation.isGuestCountInfo(guestCount)
    }
    private var dateValidation: Validation.ValidationResult {
        Validation.isValidDate(reservationDate)
    }
    
    private var isFormValid: Bool {
        nameValidation.isValid &&
        guestCountValidation.isValid &&
        dateValidation.isValid
    }
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 20){
                Form{
                    Section(header: Text("Reservation Details")){
                        
                        TextField("Enter your name", text: $username)
                        //Use .isValid since passing validation matters
                        if !nameValidation.isValid{
                            Text(nameValidation.message)
                                .foregroundStyle(.red)
                                .font(.caption)
                        }
                        
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                        //Use message.isEmpty since I want to display helpful info, not necessairily care about validation
                        if !guestCountValidation.message.isEmpty{
                            Text(guestCountValidation.message)
                                //If isValid = true, color orange. Otherwise, color red
                                .foregroundStyle(guestCountValidation.isValid ? .orange : .red)
                                .font(.caption)
                        }
                        
                        DatePicker("Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
                        if !dateValidation.isValid {
                            Text(dateValidation.message)
                                .foregroundStyle(.red)
                                .font(.caption)
                        }
                        
                        TextField("Allergy notes", text:$allergyNotes)
                        
                        Button("Confirm reservation") {
                                showSummary = true
                        }
                        .disabled(!isFormValid)
                        .navigationDestination(isPresented: $showSummary){
                            ReservationSummaryView(
                                username: username,
                                guestCount: guestCount,
                                reservationDate: reservationDate,
                                allergyNotes: allergyNotes
                            )
                        }
                    }
                    .navigationTitle("Reservation Form")
                }
            }
        }
    }
}

//#Preview {
//    ReservationForm()
//}
