// Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1. (81-1-1-81)

// Example #2: An input of 765 will/should return 493625 because 72 is 49, 62 is 36, and 52 is 25. (49-36-25)

// Note: The function accepts an integer and returns an integer.

// Happy Coding!

// SOLUTION:

func squareDigits(_ num: Int) -> Int {
  return Int(String(num).compactMap { Int(String($0)) }.compactMap { String($0 * $0) }.joined()) ?? 0
}

// SOLUITION 2:

// func squareDigits(_ num: Int) -> Int {
//     let numToString = String(num)
//     let arrayOfSquares =  numToString.map { Int("\($0)")! * Int("\($0)")! }
//     let answer = Int(arrayOfSquares.reduce("") { String($0) + String($1) })! // all squares -> String -> INT!
//     return answer
// }
