import UIKit

func lineBreak(_ name: String){
    print("-----------------\(name)-----------------")
}

lineBreak("Example 1")


var dishes = ["Pizza", "Pasta", "Salad"]
print(dishes[0])
print(dishes.count)

lineBreak("Example 2")

var prices = [9.99, 12.99, 8.99]

let total = prices[0] + prices[1]
print(String(format: "%.2f", total))

lineBreak("Example 3")

let desserts = ["Cake", "Ice cream", "Cheesecake"]
for item in desserts {
    print(item)
}

lineBreak("Example 4")

desserts.forEach{ item  in
    print(item)
}

lineBreak("Example 5")

let drinks = ["Water", "Tea", "Coffee"]
for drink in drinks {
    print("For: My favorite drink is \(drink).")
}
drinks.forEach { item in
    print("For Each: My favorite drink is \(item).")
}

lineBreak("Example 6")

let calories:[Int] = [0, 150, 80]
for calorie in calories {
    if calorie > 75 {
        print("Hace calor! \(calorie)")
    }
}

calories.forEach {calorie in
    if calorie > 75 {
        print("For Each: It's hot! \(calorie)")
    }
}

lineBreak("Example 7")

let meals = ["Salad", "Beer", "Cigarettes"]
for meal in meals {
    if meal.contains("a"){
        print("Meal with a \(meal)")
    }
}
meals.forEach{ meal in
    if meal.contains("a"){
        print("For Each: Meal with a \(meal)")
    }
}


