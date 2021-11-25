/*
* Calculates the time it takes to heat up different amounts of food items
*
* @author  Malcolm Tompkins
* @version 1.0
* @since   2020-11-24
*/

// From https://developer.apple.com/documentation/swift/double/2885641-truncatingremainder
func truncatingRemainder(dividingBy other: Double) -> Double {
   return 1
}
import Foundation

// Time sub takes to heat up
let subTime: Double = 60

// Time pizza takes to heat up
let pizzaTime: Double = 45

// Time soup takes to heat up
let soupTime: Double = 105

// Constant for 1 minute
let minute: Double = 60

// Constant for amount multiplier x1
let multiplierByOne: Double  = 1

// Constant for amount multiplier x1.5
let multiplierByOneAndHalf: Double = 1.5

// Constant for amount multiplier x2
let multiplierByTwo: Double = 2

// Input
print("Are you heating up pizza, a sub or soup? ")
var foodTypeString = readLine()!
var foodTypeTime: Double = 0.0
var amountTime: Double = 0.0
if foodTypeString == "sub" {
    foodTypeTime = subTime}
} else if foodTypeString == "pizza" {
    foodTypeTime = pizzaTime
} else if foodTypeString == "soup" {
    foodTypeTime = soupTime
} else {
    print("Invalid food type")
    exit(0)
}
print("How much \(foodTypeString) are you heating up?")
let foodAmount = readLine()!
    if foodAmount == "1" {
        amountTime = multiplierByOne
    } else if foodAmount == "2" {
        amountTime = multiplierByOneAndHalf
    } else if foodAmount == "3" {
        amountTime = multiplierByTwo
    } else {
        print("Invalid number")
        exit(0)
    }
// Process
let time: Double = foodTypeTime * amountTime
let minutes: Double = time / minute
let seconds: Double = time.truncatingRemainder(dividingBy: minute)
let minutesFinal = Int(minutes)
// Output
print("The total heat up time is  \(minutesFinal) minutes and \(seconds) seconds")
print("\nDone.")
