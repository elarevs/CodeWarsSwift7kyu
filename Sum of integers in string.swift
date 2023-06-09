// Your task in this kata is to implement a function that calculates the sum of the integers inside a string. 
// For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

// Note: only positive integers will be tested.

// SOLUTION 1:

func sumOfIntegersInString(_ string: String) -> Int {
    return string.components(separatedBy: CharacterSet.decimalDigits.inverted)
        .compactMap({Int($0)})
        .reduce(0, +)
}

// SOLUTION 2:

// func sumOfIntegersInString(_ string: String) -> Int {
//     let stringArray = string.components(separatedBy: CharacterSet.decimalDigits.inverted)
//     let stringArrayFinal = stringArray.compactMap({Int($0)})
//     let stringArraySum = stringArrayFinal.reduce(0, +)
//     return stringArraySum
// }

// SOLUTION 3:

// func sumOfIntegersInString(_ string: String) -> Int {
//     var result = 0
//     var number = "0"
//     for (index, char) in string.enumerated() {
//       if char.isNumber {
//         number += String(char)
//         if index == string.count - 1 {
//           result += Int(number)!
//         } 
//       } else {
//         result += Int(number)!
//         number = "0"
//       }
//     }
//     return result
// }
