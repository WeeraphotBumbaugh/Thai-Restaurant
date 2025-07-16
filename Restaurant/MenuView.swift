//  MenuView.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/9/25.
import SwiftUI

struct MenuView: View {
    
    @State private var showDesserts = false
    @State private var showPremiumOnly = false
    @State private var showValueOnly = false
    
    // Use a binding to connect my UI & data, allow only one toggle
    var premiumOnlyBinding: Binding<Bool> {
        Binding(
            get: { self.showPremiumOnly },
            set: { newValue in
                self.showPremiumOnly = newValue
                if newValue {
                    self.showValueOnly = false
                }
            }
        )
    }
    
    var valueOnlyBinding: Binding<Bool> {
        Binding(
            get: { self.showValueOnly },
            set: { newValue in
                self.showValueOnly = newValue
                if newValue {
                    self.showPremiumOnly = false
                }
            }
        )
    }
    
    let premiumThreshold = 3.99
    let valueThreshold = 2.99
    
    var proteinTypes: [String: Double] = [
        "Beef": 1.25,
        "Chicken": 1.00,
        "Pork": 1.25,
        "Shrimp": 1.50,
        "Tofu": 0.00
    ]
    
    let menuItems = [
        MenuItem(name: "Green Curry", description: "Green curry", price: 4.00),
        MenuItem(name: "Khao Soi", description: "Khao Soi", price: 4.50),
        MenuItem(name: "Massaman Curry", description: "Massaman Curry", price: 3.99),
        MenuItem(name: "Pad Kra Pao", description: "Pad Kra Pao", price: 1.50),
        MenuItem(name: "Pad See Ew", description: "Pad See Ew", price: 3.50),
        MenuItem(name: "Pad Thai", description: "Pad Thai", price: 1.99),
        MenuItem(name: "Panang Curry", description: "Panang Curry", price: 2.50),
        MenuItem(name: "Tom Kha", description: "Tom Kha", price: 2.99),
        MenuItem(name: "Tom Yum Goong", description: "Tom Yum Goong", price: 4.25),
        MenuItem(name: "Yellow Curry", description: "Yellow Curry", price: 3.99),
    ]
    
    // Computed variables/properties
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted { $0.name < $1.name }
    }
    
    var premiumCount: Int {
        let premiumItems = filteredMenu.filter { $0.price > 3.99 }
        return premiumItems.count
    }
    
    var regularCount: Int {
        let regularItems = filteredMenu.filter { $0.price < 3.99 }
        return regularItems.count
    }
    
    var totalPrice: Double {
        let total = filteredMenu.map{ $0.price }.reduce(0, +)
        return total
    }
    
    var filteredMenu: [MenuItem] {
//        showPremiumOnly ? menuItems.filter{ $0.price > 3.99 } : menuItems
        if showPremiumOnly {
            return menuItems.filter{ $0.price > premiumThreshold }
        } else if showValueOnly {
            return menuItems.filter{ $0.price < valueThreshold }
        } else {
            return sortedMenuItems
        }
    }
    
    var averagePrice: Double {
        let total = filteredMenu.map{ $0.price }.reduce(0, +)
        return total / Double(filteredMenu.count)
    }
    
    var sortedFilteredItems: [MenuItem] {
        filteredMenu.sorted { $0.name < $1.name }
    }
    
    private let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 3)
        
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 3){
                    
                    HStack{
                        Image(systemName: "fork.knife")
                            .foregroundColor(.gray)
                            .font(.system(size: 32))
                        Text("Today's Menu")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                    Text("Average price: $\(averagePrice, specifier: "%.2f")")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    
                    Toggle("Show Premium dishes only", isOn: premiumOnlyBinding)
                        .padding(.horizontal)
                    Toggle("Show Value dishes only", isOn: valueOnlyBinding)
                        .padding(.horizontal)
                    
                    VStack{
                        Button("View Desserts") {
                            showDesserts.toggle()
                        }
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray5))
                        .cornerRadius(15)
                        .padding(.horizontal, 150)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x:1, y:1)
                        .sheet(isPresented: $showDesserts) {
                            DessertView()
                                        }
                    }
                    .padding(.top, 5)
                    
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
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 1, y: 1)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(proteinTypes.sorted(by: {$0.key < $1.key}), id: \.key) {
                            (name, price) in
                            VStack{
                                Text(name)
                                    .font(.headline)
                                Text("+$\(price, specifier: "%.2f")")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: .infinity)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(3)
                        }
                        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 3)
                    }
                    .padding(.horizontal)
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color.accentColor.opacity(0.3))
                        .padding(.vertical, 8)
                    
                    Text("Dishes (\(filteredMenu.count))")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray5))
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 1, y: 1)
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    
                    LazyVStack(spacing:12){
                        ForEach(sortedFilteredItems) { item in
                            MenuItemView(item: item)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom)
                }
            }
            Text("Premium: \(premiumCount) | Regular: \(regularCount) | Total: $\(totalPrice, specifier: "%.2f")")
                .fontWeight(.semibold)
                .padding(.top, 5)
        }
    }
}

#Preview {
    MenuView()
}
