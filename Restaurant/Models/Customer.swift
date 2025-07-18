//
//  Customer.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/18/25.
//

import Foundation

//class Customer {
//    var name: String
//    var email: String
//    var favoriteDish: String
//
//    init (n: String, e: String, f: String){
//        self.name = n
//        self.email = e
//        self.favoriteDish = f
//    }
//}

struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]

    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "is a loyal member" : "is not a loyal member"
        let dishes = favoriteDishes.joined(separator: ", ")
        return "\(name) \(loyalty). \nFavorite dishes: \(dishes)."
    }
}
