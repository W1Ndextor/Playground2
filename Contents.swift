//: Playground - noun: a place where people can play

import UIKit

func calculateTip (totalBill: Double, withRating rating: Int) -> Double {
    
    
    let tipPercentage: Double = tipPercentageForRating(rating)
    
    return totalBill * tipPercentage
    
}


func showTipAdvice (restaurantTotal: Double, rating: Int?, restaurantName: String?) {
    
    //let restaurantTotal = 95.00
    
  
    let tip = calculateTip(restaurantTotal, withRating: 3)
    
    
    
    if let restaurantName = restaurantName {
        print("You went out to eat at \(restaurantName)")
    }
    
    if let rating = rating {
        print("You gave a rating of \(rating) stars")
    }
    
    print("On a bill of $\(restaurantTotal), you should leave a tip of $\(tip)")
    print("That means you pay $\(restaurantTotal + tip)")
}

func tipPercentageForRating(rating: Int) -> Double {
    var tipPercentage: Double
    
    if rating == 5 {
        tipPercentage = 0.25
    } else if rating >= 3 {
        tipPercentage = 0.15
    } else {
        tipPercentage = 0.10
    }
    
    return tipPercentage
}


let restaurantTotal = 95.00
var restaurantName: String? = "Burger King"


print("***OUTPUT 1***")
showTipAdvice(restaurantTotal, rating: 3, restaurantName: restaurantName)
print("\n")

print("***OUTPUT 2***")
showTipAdvice(100.0, rating: nil, restaurantName: "Arby's")
print("\n")

print("***OUTPUT 3***")
showTipAdvice(100.0, rating: 5, restaurantName: "IHOP")
print("\n")

print("***OUTPUT 4***")
showTipAdvice(100.0, rating: nil, restaurantName: nil)
print("\n")

print("***OUTPUT 10%***")
showTipAdvice(100.0, rating: 1, restaurantName: nil)
print("\n")

print("***OUTPUT 15%***")
showTipAdvice(100.0, rating: 3, restaurantName: nil)
print("\n")

print("***OUTPUT 25%***")
showTipAdvice(100.0, rating: 5, restaurantName: nil)
print("\n")
//unwrap an optional using ! but first check to see if its nil

//^^1st way to unwrap an optional

//2nd way is optiona binding....if let



//tippercentagefor rating
//takes an int for the rating and returns a double for the tip percent
