import UIKit

/*
 SWITCH
 
 switch value {
    case pattern 1:
        Code to run if value matches pattern1
    case pattern 2:
        Code to run if value matches pattern2
    default:
        Code to run if no cases match
 }
 */

// |Example 1|

let position = 1

switch position {
case 1:
    print("You are in first")
case 2:
    print("You are in second")
case 3:
    print("You are in third")
default:
    print("You placed \(position)")
}

// |Example 2|
let grade = "b"

switch grade.uppercased(){
case "A", "A+", "A-":
    print("Great job!")
case "B", "B+", "B-":
    print("You didn't do too bad.")
case "C", "C+", "C-":
    print("Gonna need to try harder")
default:
    print("Try again, bud")
}

// |Example 3|
let score = 101

switch score {
case 90...:
    print("Grade A")
case 80..<90:
    print("Grade B")
case 70..<80:
    print("Grade C")
default:
    print("Grade F")
}
