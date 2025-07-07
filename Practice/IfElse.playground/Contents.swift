import UIKit

// If - else if - else

/*  |Syntax|
 
 if condition 1{
    this block runs if condition1 is met
 } else if condition 2 {
    this block runs if condition1 is false and condition 2 is true
 } else {
    this block runs if all other conditions fail
 }

 || = or
 
 */

// |Example 1|

var waterTemp: Int = 30

if waterTemp >= 100 {
    print("The water is boiling")
} else {
    print("The water is not boiling")
}

// |Example 2|
// ctrl + cmd + space = emoji keyboard

var position = 1

if position == 1 {
    print("🩵You came first")
} else if position == 2 {
    print("2️⃣You came in second")
} else if position == 3 {
    print("You came in 3rd")
} else {
    print("You finished in position \(position). Keep training.")
}

// |Example 3|

var temp: Int = 70

if temp >= 68 && temp <= 75 {
    print("The temp is just right")
} else {
    print("The temperature is too hot or cold.")
}

// |Example 4|

var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower || batteryPower {
    print("I can use my device")
} else {
    print("Need to find charger")
}

// |Example 5|
var ifVIP:Bool = true

if ifVIP {
    print("User is a VIP")
} else {
    print("User is not a VIP")
}
