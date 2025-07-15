//  ValueBadge.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/12/25.
import SwiftUI

struct ValueBadge: View {
    var body: some View {
        
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.green)
            Text("Value")
                .font(.caption)
                .fontWeight(.bold)
        }
        .foregroundColor(.green)
        .padding(6)
        .background(Color.green.opacity(0.15))
        .cornerRadius(20)
    }    
}

#Preview {
    ValueBadge()
}
