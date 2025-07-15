//  PremiumBadge.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/12/25.
import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
                .fontWeight(.bold)
        }
        .foregroundColor(.blue)
        .padding(6)
        .background(Color.blue.opacity(0.15))
        .cornerRadius(20)
    }
}

#Preview {
    PremiumBadge()
}
