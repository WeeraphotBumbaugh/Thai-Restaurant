import UIKit

class Dish {
    var name: String
    var isVegetarian: Bool
    
    init (x: String, y: Bool) {
        self.name = x
        self.isVegetarian = y
    }
    
    func isVeggie() {
//        if isVegetarian {
//            print("\(name) is a vegetarian dish")
//        } else {
//            print("\(name) is not vegetarian. Meat big bad, no eat.")
//        }
        
        isVegetarian ? print("\(name) is a vegetarian dish") : print("\(name) is not vegetarian. Meat big bad, no eat.")
    }
}

let pastaDish = Dish(x: "Pasta", y: true)
pastaDish.isVeggie()

class dishOrder {
    var name: String
    var quantity: Int
    
    init (x: String, y: Int) {
        self.name = x
        self.quantity = y
    }
    
    func summary() {
        print("You ordered \(quantity) \(name)")
    }
}

let order1 = dishOrder(x: "Ramen", y: 5)
order1.summary()

// Create a class Review with
// reviewerName: String
// rating: Int
// Create a method: printSummary() that prints "Reviewer name and rating"

class Review {
    var reviewerName: String
    var rating: Int
    
    init (x: String, y: Int) {
        self.reviewerName = x
        self.rating = y
    }
    func printSummary(){
        print("Reviewer: \(reviewerName) and rating: \(rating)")
    }
}

let billy = Review(x: "Billy", y: 8)
billy.printSummary()
