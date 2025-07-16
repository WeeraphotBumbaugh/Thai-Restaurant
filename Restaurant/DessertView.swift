//  DessertView.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/14/25.
import SwiftUI

struct DessertView: View {
    
    let dessertItems = [
        DessertItem(name: "Mango Sticky Rice", description: "Mango Sticky Rice", price: 3.50),
        DessertItem(name: "Banana in Coconut Milk", description: "Banana w/coconut milk", price: 2.50),
        DessertItem(name: "Throng Yip", description: "Egg-yolk based dessert in syrup", price: 3.00)
    ]
    
    var body: some View {
        NavigationStack{
            List(dessertItems){ item in
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text(item.name)
                            .font(.headline)
                        
                        Spacer()
                        
                        Text("$\(item.price, specifier: "%.2f")")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
//            .navigationTitle("Desserts")
        }
        .padding()
    }
}

//#Preview {
//    DessertView()
//}
