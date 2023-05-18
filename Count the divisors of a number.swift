// Count the number of divisors of a positive integer n.

// Random tests go up to n = 500000.

// Examples (input --> output)

// 4 --> 3 // we have 3 divisors - 1, 2 and 4
// 5 --> 2 // we have 2 divisors - 1 and 5
// 12 --> 6 // we have 6 divisors - 1, 2, 3, 4, 6 and 12
// 30 --> 8 // we have 8 divisors - 1, 2, 3, 5, 6, 10, 15 and 30
// Note you should only return a number, the count of divisors. 
// The numbers between parentheses are shown only for you to see which numbers are counted in each case.

// SOLUTION:

func divisors(_ n: UInt32) -> UInt32 {
    return UInt32((1...n).filter { n % $0 == 0 }.count)
}

// SOLUTION 2:

// func divisors(_ n: UInt32) -> UInt32 {
//   var count = 0  
//   for i in 1...n {
//       if n % i == 0 {
//         count += 1
//       }
//     }
//   return UInt32(count)
// }
