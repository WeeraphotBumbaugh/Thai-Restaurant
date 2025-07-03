import UIKit

//var - variables (mutable)
//let - constants

print("Temperature Example")
let day = "Monday"
let dailyTemperature = 75
print("Today is \(day) and the temperature is \(dailyTemperature) F")

var temperature = 70
print("The temperature in the morning was \(temperature) F")

temperature = 80
print("The temperature in the afternoon was \(temperature) F")

temperature = dailyTemperature
print("The temperature in the evening was \(temperature) F")


print("\nGame score example")
let levelScore = 10
var gameScore = 0

gameScore+=levelScore
print("Your current score is \(gameScore)")

var levelBonusScore = 20.0 //floating point #
print("Your bonus is \(levelBonusScore)")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
print(levelScoreDifference)

//Swift datatypes

let dishName: String = "Omelette"
let price: Double = 12.99
let inStock: Bool = false
let quantity: Int = 5
