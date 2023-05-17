// Challenge:

// Given a two-dimensional array of integers, return the flattened version 
// of the array with all the integers in the sorted (ascending) order.

// Example:

// Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].

// SOLUTION:

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
  return arr.flatMap { $0 }.sorted()
}

// SOLUTION 2:

// func flattenAndSort(_ arr: [[Int]]) -> [Int] {
//   return arr.flatMap { $0 }.sorted()
// }
