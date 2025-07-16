import UIKit

func brk(_ name: String){
    print("| Example \(name) |")
}
// map = method. Used to transform each element in a collection into a new value

let prices = [8.50, 1.10, 5.55, 10.10]
let pricesWithTax = prices.map {String(format: "%.2f", $0 * 1.16)}

print(pricesWithTax)

brk("2")

let numbers = [1, 2, 3]
let doubled = numbers.map {$0 * 2}
print(doubled)

brk("3")

let desserts = ["Ice Cream", "Cake", "Pie"]
let emojiMenu = desserts.map {"🍦 \($0)"}
print (emojiMenu)

// | Reduce |

brk("4")

let carPrices = [22000, 25000, 27000]
let total = carPrices.reduce(0){$0 + $1}
// or
let total2 = carPrices.reduce(0, +)
print(total)
print(total2)

brk("5")








