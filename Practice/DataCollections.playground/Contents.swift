import UIKit

// | Arrays |
// Example 1
let dishes = ["Tom Yum", "Pad Thai", "Green Curry", "Massaman Curry"]
print(dishes[1])

// Example 2
var orders = [String]()
orders.append("Yellow Curry")
orders.append("Tom Kha")
print(orders.count)

// Challenge 1
let desserts: [String] = ["Mango Sticky Rice", "Pineapple Upside Down Cake", "Sticky Toffee Pudding", "Ice Cream"]
print(desserts[2])

// | Dictionaries | Key-Value Pairs |
// Example 1
let menuPrices: [String: Double] = ["Tom Yum": 2.99, "Pad Thai": 1.99, "Green Curry": 4.00]
print(menuPrices["Tom Yum"]) //Optional means Tom Yum may or may not exist, but it's going to display the expected value anyways
print(menuPrices["Pad Thai"]!) //The ! means we know that Key exists, careful, case-sensitive
//print(menuPrices["Pizza"]!) //Key doesn't exist, this will give a run-time error

// Example 2
var inventory = ["Noodles": 10, "Rice": 8, "Fish": 5]
inventory["Rice"] = 15
print(inventory["Rice"]!)

// Challenge 1
var drinks: [String: Double] = ["May Thai": 3.99, "Pacific Sunrise": 3.00, "Bangkok Business": 4.50]
print(drinks["Bangkok Business"]!)

// Challenge 2
var ingredients: [String: Double] = ["Bamboo": 5, "Bean Sprout": 22, "Chicken": 8]

// Add an item to the dict, will add to beginning of array
ingredients["Mushroom"] = 2

// Can replace the 1st or 2nd parameter with "_" and it won't display the Key or Value
for (item, price) in ingredients {
    print("Challenge 2:", item, price)
}

// Print dishes array
for dish in dishes {
    print("Dishes Array:", dish)
}

for (item, price) in menuPrices{
    print("Menu Prices: \(item) costs $\(price)")
}

// Challenge 3 | Count how many dishes are above $8.00 using a loop |
let prices2 = [8.0, 12.5, 7.0, 15.0]
for price in prices2 {
    if price > 8.0 {
        print("Challenge 3:", price)
    }
}

// | Filtering Collections |

// Example 1
let values = [12.0, 8.5, 5.0, 4.5, 14.99]
// Filter values over $10
let premium = values.filter { $0 > 10}
print("Values over $10:", premium)

// Example 2
let dishes2 = ["Tom Yum", "Pad Thai", "Green Curry", "Massaman Curry", "Yellow Curry", "Tom Kha"]
let filteredDishes2 = dishes2.filter { $0.hasPrefix("T")}
print("Start with T:",filteredDishes2)

// Challenge 1 | Filter an array of values and print only those below 10 |
let prices3: [Double] = [8.0, 12.5, 7.0, 15.0, 20.0, 10.0]
let filteredPrices = prices3.filter { $0 < 10 }
print("Challenge 1:", filteredPrices)

// Challenge 2 | Filter an array of dish names to find vegetarian options |
let menu = ["Veggie Mix", "Steak", "Fruit Bowl", "Chicken", "Pasta Salad"]
let vegOptions = menu.filter { $0.contains("Veggie") || $0.contains("Salad") || $0.contains("Fruit")}
print("Challenge 2:", vegOptions)
