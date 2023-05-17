// Your task is to write function factorial.

// https://en.wikipedia.org/wiki/Factorial

// SOLUTION 1:

func factorial(_ n: Int) -> UInt64 {
  guard n >= 1 else { return UInt64(1) }
  return UInt64((1...n).reduce(1, *))
}

// If "random tests" exits with code 132, it likely means that
// a calculation exceeded UInt64.max
// n is chosen so n! should not exceed UInt64.max

// SOLUTION 2: 

// func factorial(_ n: Int) -> UInt64 {
//     var factorial = 1
//     var answer = 1
//     if n == 0 {
//         answer = 1
//     } else if n != 0 {
//         for i in 1...n {
//             answer = i * answer
//             factorial += 1
//         }
//     }
//   return UInt64(answer)
// }
