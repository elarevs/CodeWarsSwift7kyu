// Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. 
// No floats or non-positive integers will be passed.

// For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

// [10, 343445353, 3453445, 3453545353453] should return 3453455.

// SOLUTION:

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  return array.sorted() [0...1].reduce(0, +) 
}

// SOLUTION 2:

// func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//     let newArray = array.sorted()
//     return newArray[0] + newArray[1]
// }
