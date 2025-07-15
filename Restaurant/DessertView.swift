//  DessertView.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/14/25.
import SwiftUI

struct DessertView: View {
    var dessertItems: [DessertItem]
    
    var body: some View {
        List(dessertItems){ item in
            VStack(alignment: .leading, spacing: 4){
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price, specifier: "%.2f")")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

//#Preview {
//    DessertView()
//}
