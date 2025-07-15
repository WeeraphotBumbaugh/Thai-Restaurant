//  DessertItem.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/12/25.
import Foundation

struct DessertItem:Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var price: Double
}
