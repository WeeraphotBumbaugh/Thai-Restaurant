//
//  CustomerSummaryView.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/18/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    @State private var customer1 = Customer(
        name: "Autumn",
        email: "autumn@martin.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Rabbokki", "Ramen"]
        )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            Text("Customer Summary")
                .font(.title)
                .fontWeight(.semibold)
            Text("Name: \(customer1.name)")
                .font(.title3)
            Text("Email: \(customer1.email)")
                .font(.title3)

            if customer1.isLoyaltyMember {
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Loyalty member")
                        .foregroundColor(.green)
                        .font(.title3)
                }
            }
            
            Text(customer1.customerSummary())
                .font(.title3)
            
            Toggle("Loyalty Status", isOn: $customer1.isLoyaltyMember)
                .font(.title3)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding(.top, 100)
        .padding(.horizontal, 50)
    }
}

#Preview {
    CustomerSummaryView()
}

//
//struct CustomerSummaryView: View {
//    let customer: Customer
//    
//    var body: some View {
//        VStack(spacing: 20){
//            Text("Customer information")
//                .font(.title)
//                .fontWeight(.semibold)
//            Text("Name: \(customer.name)")
//            Text("Email: \(customer.email)")
//            Text("Favorite Dish: \(customer.favoriteDish)")
//        }
//    }
//}
//#Preview {
//    let firstCustomer = Customer(
//        n: "Autumn",
//        e: "autumn@martin.com",
//        f: "Rabbokki"
//    )
//    CustomerSummaryView(customer: firstCustomer)
//}
