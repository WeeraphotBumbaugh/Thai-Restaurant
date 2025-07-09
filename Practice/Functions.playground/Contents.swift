import UIKit
/*
//Example 1
func greet (person: String)->String{
    let greeting = "Hello, \(person)"
    return greeting
}

let message = greet(person: "Shelby")
print(message)

//Example 2
func greet2(person: String, formally: Bool = false)->String{
    if formally{
        return "Greetings, \(person)."
    } else {
        return "Hi, \(person)"
    }
}

print(greet2(person:"someone"))
print(greet2(person:"Baby girl",formally: true))

//Example 3
func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
}
let total = calculateTotal(price: 10.0, quantity: 20)
print(total)
*/

//Exercise 1
func deliveryTime(minutes: Int)->String{
    return "Ready in \(minutes) minutes"
}
print(deliveryTime(minutes: 15))

//Exercise
func taxCalculator(price: Double)->Double{
    return (price * 0.05) + price
}
print(taxCalculator(price: 100))
