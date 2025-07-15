//  MenuItemView.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/12/25.
import SwiftUI

struct MenuItemView: View {
    var item: MenuItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price, specifier: "%.2f")")
                    .foregroundColor(.gray)
            }
            
            Spacer()
            if item.price > 3.99 {
                PremiumBadge()
            }
            
            if item.price < 2.75 {
                ValueBadge()
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

//#Preview {
//    MenuItemView()
//}
