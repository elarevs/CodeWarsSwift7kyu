// Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. 
// Essentially, rearrange the digits to create the highest possible number.

// Examples:

// Input: 42145 Output: 54421

// Input: 145263 Output: 654321

// Input: 123456789 Output: 987654321

// SOLUTION:

func descendingOrder(of number: Int) -> Int {
  return Int(String(String(number).sorted(by: >)))!
}

// SOLUTION 2:

// func descendingOrder(of number: Int) -> Int {
//   var string = String(number).compactMap { $0 }.sorted(by: >)
//   let answer = Int( string.reduce("") { String($0) + String($1) } )!
//   return answer
// }
