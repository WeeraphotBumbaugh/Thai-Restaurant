//  MenuView.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/9/25.

import SwiftUI

struct MenuView: View {
    
    @State private var showSpecial = false
    @State private var showThanks = false

    var proteinTypes: [String: Double] = [
        "Beef": 1.25,
        "Chicken": 1.00,
        "Pork": 1.25,
        "Shrimp": 1.50,
        "Tofu": 0.75
    ]
    
    var menuItems: [String: Double] = [
        "Green Curry": 4.00,
        "Khao Soi": 4.50,
        "Massaman Curry": 3.99,
        "Pad Kra Pao": 1.50,
        "Pad See Ew": 3.50,
        "Pad Thai": 1.99,
        "Panang Curry": 2.50,
        "Tom Kha": 2.99,
        "Tom Yum Goong": 4.25,
        "Yellow Curry": 3.99,
        "Mango Sticky Rice": 3.50
    ]
    
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 3)
        
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    HStack{
                        Image(systemName: "fork.knife")
                            .foregroundColor(.gray)
                            .font(.system(size: 32))
                        Text("Today's Menu")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                    VStack{
                        Toggle("Show Special Text", isOn: $showSpecial)
                        if showSpecial {
                            Text("Discount code")
                                .font(.title3)
                                .foregroundColor(.red)
                        }
                        Toggle("Show Thank You Message", isOn: $showThanks)
                        if showThanks {
                            Text("Thanks for visiting Tasty Thai!")
                                .foregroundColor(.blue)
                                .italic()
                        }
                    }
                    .padding()
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color.accentColor.opacity(0.3))
                        .padding(.vertical, 8)
                    
                    Text("Protein Types")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray5))
                        .cornerRadius(15)
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(proteinTypes.sorted(by: {$0.key < $1.key}), id: \.key) {
                                (name, price) in
                                VStack{
                                    Text(name)
                                        .font(.headline)
                                    Text("$\(price, specifier: "%.2f")")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .padding(3)
                            }
                    }
                    .padding(.horizontal)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color.accentColor.opacity(0.3))
                        .padding(.vertical, 8)
                    
                    Text("Dishes (\(menuItems.count))")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                    
                    LazyVStack(spacing: 16){
                        ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key) {
                            (name, price) in
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    VStack(alignment: .leading, spacing: 4){
                                        Text(name)
                                            .font(.headline)
                                        Text("$\(price, specifier: "%.2f")")
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    if price > 3.99 {
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
                                    
                                    if price < 2.75 {
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
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .navigationTitle("Menu")
    }
}

#Preview {
    MenuView()
}
